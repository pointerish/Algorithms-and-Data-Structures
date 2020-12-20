class Node
  attr_accessor :value, :next_node
  
  def initialize(value = nil, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  
  attr_accessor :head
  
  def initialize
    @head = Node.new
  end

  def add(number)
    if @head.value.nil?
      @head = Node.new(number)
    else
      @head.next_node = Node.new(number)
    end
  end

  def get(index)
    return @head if index.zero?
    return nil if @head.value.nil?
    pointer = @head.next_node
    while !pointer.nil? && index > 0
      index -= 1
      pointer = pointer.next_node
    end
    pointer
  end
  
  def add_at(index, number)
    return nil if index < 0
    if index.zero?
      @head.next_node = @head
      @head.value = number
    else
      prev_node = self.get_node(index - 1)
      prev_node.next_node = Node.new(number, self.get_node(index + 1))
    end
  end
  
  def remove(index)
    to_remove = get_node(index)
    to_remove.value = to_remove.next_node    
  end

  private

  def get_node(index)
    return @head if index.zero?
    node = @head
    k = 1
    until node.next_node.nil?
      return node.next_node if k == index
      k += 1 
    end
  end
end


# list = LinkedList.new

# list.add(3)
# list.add(5)
# list.add_at(1, 11)
# list.add_at(0, 13)

# puts list.get(2)
# # => 11

# puts list.get(3)
# # => 5

# head = list.head.value