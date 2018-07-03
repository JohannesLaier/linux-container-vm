require 'fileutils'
require 'json'

require_relative '../config'

class DB
  def self.store(store, data)
    File.write("#{$PATH_DB}#{store}.json", JSON.generate(data));
  end

  def self.load(store)
    content = File.read("#{$PATH_DB}#{store}.json");
    if content
      return JSON.parse(content)
    end
    return {}
  end
end
