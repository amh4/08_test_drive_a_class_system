class TodoList
  def initialize
    @my_list = []
  end

  def add(todo) 
    @my_list.push(todo)
  end

  def incomplete
    return [] if @my_list.empty?
    return @my_list.reject(&:done?).map(&:task).join(", ")
  end

  def complete

  end

  def give_up!

  end
end