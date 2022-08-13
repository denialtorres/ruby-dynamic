require 'pry'
# rules
# the number of characteres per string is n*2
# "(" is always >= ")"
# ")" is >= "("

# conditions

# n = number of pairs


def generate_parentesis(n)
  backtracing([],"", 0, 0, n)
end

def backtracing(result,string, open_parenthesis, close_parenthesis, n)
  if close_parenthesis == n
    # add it to the result stack
    result << string
    return
  else
    if open_parenthesis > close_parenthesis
      backtracing(result, string+")", open_parenthesis, close_parenthesis+1, n)
    end

    if open_parenthesis < n
      backtracing(result, string+"(", open_parenthesis+1, close_parenthesis, n)
    end
  end

  result
end

puts generate_parentesis(2)
