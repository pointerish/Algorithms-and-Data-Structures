require_relative '../SinglyLinkedList/singly_linked_list'

class Stack < SinglyLinkedList

  def empty?
    head.value.nil?
  end

  def push(number)
    add(number)
  end
  
  def pop
  end
end