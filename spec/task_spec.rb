require 'spec_helper'

describe Task do
  it { should validate_presence_of :description }
  it { should validate_presence_of :list_id }
  it { should validate_numericality_of :list_id }
  it { should belong_to :list }


  it "starts with a default done value of false" do
    task = Task.new(:description => "start using git", :list_id => 4)
    task.save
    task.done.should eq false
  end
end
