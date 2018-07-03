#!/usr/bin/env ruby

require_relative 'core/container'
require_relative 'core/bootstrap'
require_relative 'core/image'
require_relative 'config'

if __FILE__ == $0
	if %x{ id -u }.to_i != 0
		puts "You need to execute this application as root.\n"
		exit 0
	end

	case ARGV[0]
	when "image"
		case ARGV[1]
		when "list"
			puts "\n\tImages:\n\n"
			image_list = Image.get_all
			image_list.each_with_index do |name, index|
				puts "\t#{index}\t#{name}\n"
			end
			puts "\n"
		when "rm"
			image = Image.new(ARGV[2], {})
			image.remove()
		when "create"
			image = Image.new(ARGV[2], ARGV[3])
			image.create()
		end
	when "container"
		case ARGV[1]
		when "run"
			container = Container.new(ARGV[2], ARGV[3])
			container.launch()
			container.stop()
		when "stop"
			container = Container.new(nil, nil)
			container.pid = ARGV[2].to_i
			container.stop()
		when "list"
			puts "\n\tContainer:\n\n"
			container_list = Container.get_all
			container_list.each_with_index do |container, index|
				puts "\t#{index}\tPID: #{container['pid']}\tImage: #{container['image']}\tCommand: #{container['command']}\n"
			end
			puts "\n"
		end
	end
end
