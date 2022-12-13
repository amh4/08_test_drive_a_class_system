# require_relative "../lib/todo_list"
# require_relative "../lib/todo"

# RSpec.describe "todo_list" do
#   it "give_up! iterates over each incomplete item and marks as done" do
#     my_todo = TodoList.new
#     first_todo = Todo.new("my list")
#     my_todo.add("buy eggs")
#     my_todo.add("workout")
#     my_todo.add("walk the dog")
#     my_todo.add("run")
#     my_todo.give_up!
#     expect(my_todo.complete).to eq ["buy eggs", "workout", "walk the dog", "run"]
#   end
# end