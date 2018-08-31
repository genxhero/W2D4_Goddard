class MyStack
  
  def initialize(arr=[])
   @store = arr
  end
  
  def push(item)
    @store << item
  end

  def pop
    @store.pop
  end
  
  def peek
    @store.last
  end
  
  def size
    @store.count
  end
  
  def empty?
    @store.empty?
  end
  
end