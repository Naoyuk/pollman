# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Votes', type: :system do
  before do
    driven_by(:rack_test)
    @vote = FactoryBot.build(:vote)
  end

  # scenario 'successfully signs up and redirect to root path' do
  # visit new_user_path
  # click_link 'Sign up'

  # expect do
  #   fill_in 'Name', with: @user.name
  #   fill_in 'Email', with: @user.email
  #   fill_in 'Password', with: @user.password
  #   fill_in 'Password Confirmation', with: @user.password_confirmation
  #   click_button 'Sign up'
  # end.to change(User, :count).by(1)

  # expect(page).to have_content 'Successfully signed in!'
  # expect(current_path).to eq root_path
  # end

  scenario 'are shown in index.' do
    @vote.save
    visit votes_path

    expect(page).to have_content 'MyVote'
    expect(page).to have_title 'Votes|Pollman'
  end

  scenario 'are successfully created with title and deadline.' do
    visit new_vote_path

    expect do
      fill_in 'Title', with: 'MyVote'
      fill_in 'Deadline', with: '2021-03-07 00:51:19'
      click_button 'Create Vote'
    end.to change(Vote, :count).by(1)
  end

  scenario 'are successfully modefied.' do
    @vote.save
    visit edit_vote_path(@vote)

    fill_in 'Title', with: 'MyVote01'
    fill_in 'Deadline', with: '2021-03-07 01:00:00'
    click_button 'Update Vote'

    expect(page).to have_content 'MyVote01'
    expect(page).to have_content '2021-03-07 01:00:00'
  end

  scenario 'has some contents in show.' do
    @vote.save
    visit vote_path(@vote)

    expect(page).to have_title @vote.title + '|Pollman'
    expect(page).to have_content 'MyVote'
    expect(page).to have_content '2021-03-07 00:51:19'
  end
end
