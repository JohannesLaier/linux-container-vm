require 'fileutils'
require 'sys/proctable'

require_relative '../config'
require_relative 'bootstrap'
require_relative 'chroot'
require_relative 'db'

class Container
  attr_accessor :pid
  attr :image, :command

  def initialize(image, command)
    @image = Image.new(image, {})
    @command = command
  end

  def launch()
    chroot = Chroot.new(@image)
    @pid = chroot.exec(@command, true)

    container_db = DB.load("container")
    container_db.push({
      "pid" => @pid,
      "image" => @image.name,
      "command" => @command
    })
    DB.store("container", container_db)
  end

  def stop()
    Process.kill("KILL", @pid)
    container_db = DB.load("container")
    container_db.each do |container|
      if container["pid"] == @pid
        container_db.delete_at(container_db.index(container))
      end
    end
    DB.store("container", container_db)
  end

  def exec(command)
    chroot = Chroot.new(@image)
    chroot.exec(command)
  end

  def self.sync
    container_db = DB.load("container")
    container = []
    Sys::ProcTable.ps{ |proc_struct|
    		pid = proc_struct.pid
    		command = proc_struct.cmdline
        container_db.each do |c|
          if c["pid"] == proc_struct.pid
            container.push(c)
          end
        end
    }
    DB.store("container", container)
    return container
  end

  def self.get_all
    return sync
  end
end
