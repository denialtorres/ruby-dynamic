require 'pry'

stack = %w[mattress1 mattress2 mattress3 mattress4 pea mattress5 mattress6]

def find_pea(stack_of_matress)
  if stack_of_matress.size > 0
    current_item = stack_of_matress.pop
  else
    return no_pea
  end

  return finally_rest(stack_of_matress.size) if is_a_pea?(current_item)

  puts "this is not a pea, this is #{current_item}"

  find_pea(stack_of_matress)
end

def finally_rest(position)
  puts "I can finally rest, the pea was in position #{position + 1}"
end

def no_pea
  puts "there is no pea :(("
end

def is_a_pea?(item)
  item == 'pea'
end


find_pea(stack)
