require 'fileutils'
require 'json'

require_relative '../config'
require_relative 'bootstrap'
require_relative 'chroot'

class Image
  attr :name, :options, :config_file

  def initialize(name, options)
    @name = name
    @options = options
    if options.kind_of? String
      @config_file = options
      config = File.read(options)
      @options = JSON.parse(config)
    end
  end

  def path()
    return "#{$PATH_IMAGES}#{@name}"
  end

  def create()
    # Debootstrap
    if @options['from'] == "ubuntu"
      FileUtils.mkdir_p path
      bootstrap = Bootstrap.new(@options['from'], @options['dist'], @options['arch'], self)
      #bootstrap.run
    elsif self.class.get_all().include? @options['from']
      FileUtils.cp_r($PATH_IMAGES + @options['from'], $PATH_IMAGES + @name);
    else
      puts "Image type: #{@options['from']} are not supported.\n"
    end

    # copy files
    if @options['add']
      @options['add'].each do |add|
        FileUtils.cp_r(add['from'], path() + '/' + add['to'])
      end
    end

    # execute commands
    if @options['cmd']
      chroot = Chroot.new(self)
      @options['cmd'].each do |cmd|
        #chroot.exec(cmd)
      end
    end
  end

  def remove
      FileUtils.rm_rf path
  end

  def self.get_all
    images = []
    Dir.entries($PATH_IMAGES).select { |file|
      if !file.include?"."
        images.push(file)
      end
    }
    return images
  end
end
