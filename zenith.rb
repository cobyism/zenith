class Zenith

  class << self

    # Things we need to handle
    # - modifiers, like html:5
    # - classes (can be multiple)
    # - IDs (must be singular)
    # - multipliers (*)
    # - children (>)
    # - closing tags (including self-closing elements)
    # - default attributes (a -> href etc)
    # - indentation customization
    # - siblings (+)
    # - un-nesting (<, including multiple unnest [<<]?)
    # - content ({content})
    # - interators ($, including inside specified content {})

    def expand(input)
      output = ""
      #while input.length
        element, input = pop_element(input)
        output << open_tag(element)
        output << if has_children(element)
        output << open_tag(element)
#         containers = parse_containers(input)
#         containers.each_with_index do |container, i|
#           root, modifiers = container.split ':'
#           output << "<#{root}>"
#           output = indent(output, i) unless i == containers.length - 1
#         end
#         containers.reverse.each_with_index do |container, i|
#           root, modifiers = container.split ':'
#           output << "</#{root}>"
#           output = outdent(output, containers.length - i) unless i == containers.length - 1
#         end
#       end
      "#{output}"
    end

    def pop_element(str)
      str.split '>', 1
    end

    def has_children(el)
      false
    end

    def indent(output, depth)
      output << "\n"
      (depth + 1).times do
        output << "  "
      end
      output
    end

    def outdent(output, depth)
      output << "\n"
      (depth - 2).times do
        output << "  "
      end
      output
    end

    def parse_containers(str)
      containers = input.split '>'
    end

  end

end
