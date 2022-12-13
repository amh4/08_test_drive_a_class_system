class TodoList
  def initialize
    @my_list = []
  end

  def add(todo) 
    @my_list.push(todo)
  end

  def incomplete
    fail "Your list is empty" if @my_list.empty?
    return @my_list.reject(&:done?).map(&:task).join(", ")
  end

  def complete
    fail "Your list is empty" if @my_list.empty?
    return @my_list.select(&:done?).map(&:task).join(", ")
  end

  def give_up!
    fail "Your list is empty" if @my_list.empty?
    @my_list.map(&:mark_done!)
  end
end