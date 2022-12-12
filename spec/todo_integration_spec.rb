require_relative "../lib/todo_list"
require_relative "../lib/todo"

RSpec.describe "todo_list" do
  context "adding items to todo list" do
    it "adding item to do list" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.incomplete).to eq [first_todo]
    end

    it "adding item to do list and returning the complete array" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.complete).to eq []
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
  end
end
