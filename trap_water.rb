# rules
# Initialize total_volume = 0.
# Set size = size of heights.
# Iterate through the heights from 0 to size - 1.
# Initialize left_max = 0. <<
# Iterate through the heights from 0 to current element.
# Set left_max = max(left_max, current element).
# Initialize right_max = 0.
# Iterate through the heights from current element to size.
# Set right_max = max(right_max, current element).
# Add min(left_max, right_max) - current element to total_volume.
# Return total_volume.
require 'pry'

heights = [0,1,0,2,1,0,1,3,2,1,2,1]
total_volume = 0
size = heights.size
total_volumes = []
trapped_water = 0

heights.each_with_index do |height, index|
  left_max = 0
  right_max = 0

  for a in 0..index do
    left_max = [left_max, heights[a]].max
  end

  for b in index..height.size do
    break if b > size - 1
    right_max = [right_max, heights[b]].max
  end

  total_volume = [left_max, right_max].min - height

  total_volumes.push(total_volume)

  trapped_water = trapped_water + [left_max, right_max].min - height
end

binding.pry

total_volumes.inject(:+)
