# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  before do
    driven_by(:rack_test)
  end

  scenario 'home page has Pollman title, Sign up and poll, Home and Log in button' do
    visit root_path
    expect(page).to have_current_path root_path
    expect(page).to have_title 'Pollman'
    expect(page).to have_content 'Sign up and poll'
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Log in'
  end

  scenario 'help page has own title and contents' do
    visit root_path
    expect(page).to have_current_path root_path
    expect(page).to have_title 'Pollman | Help'
    expect(page).to have_content 'What\'s Pollman'
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Log in'
  end
end
