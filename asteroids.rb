require 'pry'
stack = []

asteroids = [5,10,-5]
stack = []
asteroids.each do |asteroid|
  keep = true
  # if the stack is not empty and the next asteroid is going to collide with the stack last element
  while stack.any? && stack.last >= 0 && asteroid <= 0
    if stack.last.abs == asteroid.abs
       # destroy left and right asteroid
      stack.pop
      keep = false
      break
    elsif stack.last.abs > asteroid.abs
      # keep the asteroid of the left
      # destroy right asteroid
      keep = false
      break
    elsif stack.last.abs < asteroid.abs
      # destroy astoid of the left
      # add astoid of the right
      stack.pop
    end
  end

  if keep
    stack.append(asteroid)
  end
end
