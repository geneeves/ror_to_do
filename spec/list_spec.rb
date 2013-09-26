require 'spec_helper'

describe List do
  it { should validate_presence_of :name }
  it { should have_many :tasks }

  it "will show all tasks marked as done" do
    list = List.new(:name => "chores", :id => 1)
    list.save
    task = Task.new(:description => "wash the capybara", :list_id => 1 )
    task.save
    task2 = Task.new(:description => "play bongos", :list_id => 1, :done => true)
    task2.save
    list.done_tasks.should eq [task2]
  end

  it "will show all the tasks not marked as done" do
    list = List.new(:name => "chores", :id => 1)
    list.save
    task = Task.new(:description => "wash the capybara", :list_id => 1 )
    task.save
    task2 = Task.new(:description => "play bongos", :list_id => 1, :done => true)
    task2.save
    list.not_done_tasks.should eq [task]
  end

end