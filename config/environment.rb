require 'bundler'
Bundler.require

module Concerns
    module Concerns::Findable
    def find_by_name(name)
      self.all.find { |a| a.name == name }
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end
  end
end

require_all 'lib'
