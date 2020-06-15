class ToDoList
  include Enumerable

  def initialize(items = [])
    @items = items if items.is_a?(Array)
  end

  def each
    @items.each { |item| yield(item) }
  end

  def <<(item)
    @items = @items.unshift(item)
  end
end
