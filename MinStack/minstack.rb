class MinStack

  attr_reader :min
  
  def initialize
    @min = nil
    @stack = []
  end

  def push(obj)
    if @stack.length.zero?
      @min = obj
    else
      @min = @min > obj ? obj : min
    end
    @stack << obj
  end

  def pop
    @stack.delete(@stack.last)
  end

end