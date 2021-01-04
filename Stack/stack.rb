require_relative '../SinglyLinkedList/singly_linked_list'

class Stack < SinglyLinkedList

  alias :push :add

  def empty?
    head.value.nil?
  end
  
  def pop(index = nil)
    if index.nil?
      popped = tail
      remove(length - 1)
    else
      popped = get(index)
      remove(index)
    end
    popped
  end
end