module Zenith

  VERSION = '0.0.1'

  require 'zenith/expander'

  def self.expand(input = "")
    Zenith::Expander.expand(input)
  end

end
