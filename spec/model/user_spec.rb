require 'rails_helper'

describe User do

  it "Requires an email - Invalid Test" do
    @user = User.create(password:'test')
    expect(@user).to be_invalid
  end

  it "Requires a unique email - Invalid Test" do
    User.create(email: 't@t.com',password:'test')
    @user = User.create(email: 't@t.com',password:'test2')
    expect(@user).to be_invalid
  end

  it "Requires an email and password- Valid Test" do
    @user = User.create(email:'t@t.com',password:'test')
    expect(@user).to be_valid
  end
end
