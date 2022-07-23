require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head == nil
      return
    elsif head.next_node == nil
      return
    end

    current_node = head

    while current_node
      before = current_node.prev_node
      after = current_node.next_node
      current_node.prev_node = after
      current_node.next_node = before

      current_node = after
    end

    headOrig = head
    tailOrig = tail
    
    @head = tailOrig
    @tail = headOrig


    # your code here
  end
end
