require '../LinkedList/SinglyLinkedList/singly_linked_list'

class Queue < SinglyLinkedList
  
  def enqueue(obj)
    new_head = Node.new(obj, head)
    head = new_head
  end

  def dequeue
    item = head
    remove(0)
    item
  end
end