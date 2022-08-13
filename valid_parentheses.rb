require 'pry'

s = "()[]{}[][]{}"

def is_valid(s)
    stack = []
    array_of_characters = s.chars
    array_of_characters.each do |character|
        keep = true

        while stack.any?
          if stack.last == "{" && character == "}"
              stack.pop
              keep = false
              break;
          elsif stack.last == "(" && character == ")"
              stack.pop
              keep = false
              break;
          elsif stack.last == "[" && character == "]"
              stack.pop
              keep = false
              break;
          else
              break;
          end
        end

        if keep
          stack.append(character)
        end
    end

    return stack.empty?
end

puts is_valid(s)
