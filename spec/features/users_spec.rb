require 'rails_helper'

feature 'Guest Access' do

  scenario 'Guest can successfully visit'
    visit root_path
    expect(current_path).to eq root_path

    visit tasks_path
    expect(current_path).to eq tasks_path

    visit resources_path
    expect(current_path).to eq resources_path

    visit new_resources_path
    expect(current_path).to eq new_resources_path


    visit signup_path
    expect(current_path).to eq signup_path

    visit signin_path
    expect(current_path).to eq signin_path

  end

  scenario 'Guest gets redirected when trying to visit' do

    visit new_task_path
    expect
    expect(page).to have_content('You must sign in or create an account to create a custom task')
  end
  
end

feature 'Sign Up page-' do

  scenario 'Guest can sign up successfully' do
    visit signup_path

    fill_in 'Email', with: 't@t2.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password confirmation', with: 'test'

    click_on 'Sign Up'

    expect(current_path).to eq tasks_path
  end

  scenario 'User can\'t create a new account without entering required data' do
    create_user
    visit signup_path
    click_on 'Sign Up'

    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Password can't be blank")

    fill_in 'Email', with: 't@t.com'
    click_on 'Sign Up'
    expect(page).to have_content("Email has already been taken")

  end
end

feature 'Sign In page-' do

  scenario 'Guest can sign in successfully' do
    create_user
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: 't@t.com'
    fill_in 'Password', with: 'test'
    click_on 'Sign in'

    expect(current_path).to eq tasks_path
  end

  scenario 'Guest can\'t sign in without entering required data' do
    create_user
    visit signin_path
    click_on 'Sign in'
    expect(page).to have_content("Email / Password combination is invalid")
  end
end

feature 'Sign Out button-' do

  scenario 'Guest can sign out successfully' do
    login
    click_on 'Sign Out'
    expect(current_path).to eq root_path
  end

end
