require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add(value)
    if(self.head.nil?)
      self.head = Node.new(value, nil)
    else
      last_node = self.head

      while(!last_node.next_node.nil?)
        last_node = last_node.next_node
      end

      # We are at the end of the list
      last_node.next_node = Node.new(value, nil)
    end
  end

  def find(value)
    node = self.head
    while(!node.nil?)
      return true if node.value == value

      node = node.next_node
    end

    false
  end

  private

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
puts ll.head.value
puts ll.head.next_node.value
puts ll.find(10)
puts ll.find(70)
puts ll.find(20)
