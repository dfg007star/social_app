require 'rails_helper'

RSpec.describe 'Post page', :js, type: :feature do
  scenario 'user create post' do
    visit '/'
    click_link 'Sign in'
    click_link 'Sign up'
    expect(page).to have_current_path '/users/sign_up'
    fill_in placeholder: 'Name', with: 'Dima'
    fill_in placeholder: 'Email', with: 'post_test@mail.ru'
    fill_in placeholder: 'Password', with: 'password'
    fill_in placeholder: 'Password confirmation', with: 'password'
    click_on(class: 'is-link')

    visit new_post_path

    within 'form' do
      fill_in placeholder: 'Title..', with: 'Title_test'
      fill_in placeholder: 'Your content..', with: 'Content_test'
      click_button 'Upload'
    end
    expect(page).to have_current_path '/users/1'
  end
end
