require_relative "../lib/todo"

RSpec.describe "Todo" do
  it "returns the task" do
    first_item = Todo.new("Hoover")
    expect(first_item.task).to eq "Hoover"
  end

  it "marks @complete as done/true" do
    first_item = Todo.new("Hoover")
    expect(first_item.mark_done!).to eq true
  end

  it "returns true if the task has been completed" do
    first_item = Todo.new("Hoover")
    first_item.mark_done!
    expect(first_item.done?).to eq true
  end

  it "returns false if the task has been completed" do
    first_item = Todo.new("Hoover")
    expect(first_item.done?).to eq false
  end
end