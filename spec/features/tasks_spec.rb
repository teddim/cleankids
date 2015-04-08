require 'rails_helper'

feature 'Tasks CRUD Happy Path for Members-' do

  scenario 'CREATE: User can create a new task' do
    user = User.create(email:'t@t.com', password: 'test')
    session[:user_id] = user.id
    visit tasks_path

    click_on 'New Task'

    fill_in 'Description', with: 'Brush your teeth'
    check 'Morning'
    click_on 'Create Task'
    expect(page).to have_content('Brush your teeth')
  end

  scenario 'READ: User can see a task on the index page' do
    user = User.create(email:'t@t.com', password: 'test')
    session[:user_id] = user.id
    task = Task.create(description: "Brush your teeth", type: "morning", user_id: user.id)

    visit tasks_path

    expect(page).to have_content('Brush your teeth')
    expect(page).to have_content('Community Ideas')
    expect(page).to have_content('Your Ideas')

  end

end

feature "Tasks CRUD validation:" do

  scenario 'User can\'t create a new task without a description' do
    user = User.create(email:'t@t.com', password: 'test')
    session[:user_id] = user.id

    visit tasks_path
    click_on 'New Task'
    click_on 'Create Task'
    expect(page).to have_content(/prohibited this form from being saved/)
    click_on 'Cancel'

    expect(current_path).to eq tasks_path

  end

end
