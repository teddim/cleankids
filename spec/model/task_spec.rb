require 'rails_helper'

describe Task do

  it "Requires a description - Invalid Test" do
    @task = Task.create(task_type: nil, user_id: nil)
    expect(@task).to be_invalid
  end

  it "Requires a description - Valid Test" do
    @task = Task.create(description:'Brush your teeth', task_type: 'daily routine', user_id: nil)
    expect(@task).to be_valid
  end
end
