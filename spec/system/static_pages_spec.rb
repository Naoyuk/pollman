# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  before do
    driven_by(:rack_test)
  end

  scenario 'home page has Sign up and poll, Home and Log in button' do
    visit root_path
    expect(page).to have_current_path root_path
    expect(page).to have_content 'Sign up and poll'
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Log in'
  end
end
