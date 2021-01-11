class Node
  attr_accessor :value, :next_node
  
  def initialize(value = nil, next_node = nil)
	  @value = value
    @next_node = next_node
  end

  def to_s
    "#{@value} -> #{@next_node}"
  end
end

class SinglyLinkedList
  
  attr_accessor :head, :tail
  
  def initialize
    @head = Node.new
    @tail = nil
  end

  def add(obj)
    pointer = @head
    if @head.value.nil?
      @head = Node.new(obj)
      @tail = @head
    else
      until pointer.next_node.nil?
        pointer = pointer.next_node
      end
      pointer.next_node = Node.new(obj)
      @tail = pointer.next_node
    end
  end

  def add_from_a(array)
    if array.class != Array
      'Argument Must be an Array'
    end
    array.each do |item|
      add(item)
    end
    to_a
  end

  def get(index)
    return @head if index.zero?
    return nil if @head.value.nil?
    return nil if index > (length - 1)
    pointer = @head
    until pointer.next_node.nil?
      index -= 1
      pointer = pointer.next_node
      return pointer if index.zero?
    end
    pointer
  end

  def length
    counter = 1
    pointer = @head
    while pointer.next_node.nil? == false
      counter += 1
      pointer = pointer.next_node
    end
    counter
  end

  def to_a
    return [] if @head.value.nil?
    arr = [@head.value]
    pointer = @head
    until pointer.next_node.nil?
      pointer = pointer.next_node
      arr << pointer.value
    end
    arr
  end
  
  def add_at(index, number)
    return nil if (index < 0) || (index > length)
    if index.zero?
      @head.next_node = @head
      @head.value = number
    elsif index == length
      add(number)
    else
      new_node = Node.new(number)
      previous_node = get(index - 1)
      next_to_node = get(index)
      new_node.next_node = next_to_node
      previous_node.next_node = new_node
    end
  end
  
  def remove(index)
    if index == (length - 1)
      @tail = get(index - 1)
    end
    if index.zero?
      head = get(index + 1)
    end
    previous_node = get(index - 1)
    next_to_node = get(index + 1)
    previous_node.next_node = next_to_node
  end
end
