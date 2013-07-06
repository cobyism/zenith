module Zenith
  class Expander

    # Things we need to handle.
    # - modifiers, like html:5
    # - classes (can be multiple)
    # - IDs (must be singular)
    # - multipliers (*)
    # - children (>)
    # - closing tags (including self-closing elements)
    # - default attributes (a -> href etc)
    # - indentation customization
    # - siblings (+)
    # - un-nesting (^, including multiple unnest [^^]?)
    # - content ({content})
    # - interators ($, including inside specified content {})
    # - ALL THE NEW EMMET STUFF LIKE grouping () etc.

    def self.expand(input = "")
      # Someday this will expand '#{input}' into HTML ^_^
      output = ""
      containers = parse_containers(input)
      containers.each_with_index do |container, i|
        root, modifiers = container.split ':'
        output << "<#{root}>"
        output = indent(output, i) unless i == containers.length - 1
      end
      containers.reverse.each_with_index do |container, i|
        root, modifiers = container.split ':'
        output << "</#{root}>"
        output = outdent(output, containers.length - i) unless i == containers.length - 1
      end
      "#{output}"
    end

    private

    def self.indent(output, depth)
      output << "\n"
      (depth + 1).times do
        output << "  "
      end
      output
    end

    def self.outdent(output, depth)
      output << "\n"
      (depth - 2).times do
        output << "  "
      end
      output
    end

    def self.parse_containers(str)
      containers = str.split '>'
    end

  end
end
