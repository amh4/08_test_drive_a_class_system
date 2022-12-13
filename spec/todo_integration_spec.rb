require_relative "../lib/todo_list"
require_relative "../lib/todo"

RSpec.describe "todo_list" do
  context "adding items to todo list" do
    it "adding item to do list" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.incomplete).to eq "Walk the dog"
    end

    it "mark_done! method behavior" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(first_todo.mark_done!).to eq true
    end

    it "done? returns true if the task is done, else false" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      first_todo.mark_done!
      expect(first_todo.done?).to eq true
    end

    it "done? returns true if the task is done, else false" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(first_todo.done?).to eq false
    end

    it "incomplete can return a list of multiple tasks" do
      my_todo = TodoList.new
      first_todo = Todo.new("hoover")
      second_todo = Todo.new("walk the dog")
      third_todo = Todo.new("buy eggs")
      my_todo.add(first_todo)
      my_todo.add(second_todo)
      my_todo.add(third_todo)
      expect(my_todo.incomplete).to eq "hoover, walk the dog, buy eggs"
    end

    it "incomplete can return a list of multiple tasks" do
      my_todo = TodoList.new
      first_todo = Todo.new("hoover")
      second_todo = Todo.new("walk the dog")
      third_todo = Todo.new("buy eggs")
      my_todo.add(first_todo)
      my_todo.add(second_todo)
      my_todo.add(third_todo)
      first_todo.mark_done!
      second_todo.mark_done!
      expect(my_todo.incomplete).to eq "buy eggs"
    end
  end
end
