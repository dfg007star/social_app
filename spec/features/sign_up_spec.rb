require 'rails_helper'

RSpec.describe 'the signup process', type: :feature do
  it 'signs @user up' do
    visit '/'
    click_link 'Sign in'
    click_link 'Sign up'
    expect(page).to have_current_path '/users/sign_up'
    fill_in placeholder: 'Name', with: 'Dima'
    fill_in placeholder: 'Email', with: 'sign_up@mail.ru'
    fill_in placeholder: 'Password', with: 'password'
    fill_in placeholder: 'Password confirmation', with: 'password'
    click_on(class: 'is-link')
    expect(page).to have_current_path '/'
  end
end
