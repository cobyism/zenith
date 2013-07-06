module Zenith

  VERSION = '0.0.1'

  def self.expand(input = "")
    Zenith::Expander.expand(input)
  end

  class Expander
    def self.expand(input = "")
      "Someday this will expand '#{input}' into HTML ^_^"
    end
  end
end
