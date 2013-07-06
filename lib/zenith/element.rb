module Zenith
  class Element

    @tag
    @id
    @classes
    #@attributes
    #@children

    attr_accessor :tag, :id, :classes

    def initialize(str)
      @tag      = str.scan(/\A([a-zA-Z]+)/)[0] || 'div'
      @id       = str.scan(/#(\w+)/)[0]
      @classes  = str.scan(/\.(\w+)/) || []
    end

  end
end
