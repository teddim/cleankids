require 'rails_helper'

feature 'Guest Access' do

  scenario 'Guest can successfully visit' do
    visit root_path
    expect(current_path).to eq root_path

    visit tasks_path
    expect(current_path).to eq tasks_path

    visit routines_path
    expect(current_path).to eq routines_path

    visit new_routine_path
    expect(current_path).to eq new_routine_path


    visit signup_path
    expect(current_path).to eq signup_path

    visit signin_path
    expect(current_path).to eq signin_path

  end

  scenario 'Guest gets redirected when trying to visit' do

    visit new_task_path
    expect(page).to have_content('Sign In to Customize Your Chart')
  end

end

feature 'Sign Up page-' do

  scenario 'Guest can sign up successfully' do
    visit signup_path

    fill_in 'Email', with: 't@t2.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password confirmation', with: 'test'

    click_on 'Sign Up'

    expect(current_path).to eq new_task_path
  end

  scenario 'User can\'t create a new account without entering required data' do
    visit signup_path
    click_on 'Sign Up'

    expect(page).to have_content("Password can't be blank")

    fill_in 'Email', with: 't@t.com'
    click_on 'Sign Up'
    expect(page).to have_content("Email has already been taken")

  end
end

feature 'Sign In page-' do

  scenario 'Guest can sign in successfully' do
    user = User.create(email:'t@t.com', password: 'test')

    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: 't@t.com'
    fill_in 'Password', with: 'test'
    click_on 'Sign in'

    expect(current_path).to eq tasks_path
  end

  scenario 'Guest can\'t sign in without entering required data' do
    user = User.create(email:'t@t.com', password: 'test')

    visit signin_path
    click_on 'Sign in'

    expect(page).to have_content("Email / Password combination is invalid")
  end
end

feature 'Sign Out button-' do

  scenario 'Guest can sign out successfully' do
    user = User.create(email:'t@t.com', password: 'test')
    session[:user_id] = user.id
    click_on 'Sign Out'

    expect(current_path).to eq root_path
  end

end
