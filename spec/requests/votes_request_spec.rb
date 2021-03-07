# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Votes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get votes_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    vote = Vote.create(title: 'My Vote', deadline: '2021-03-07 00:51:19')
    it 'returns http success' do
      get votes_path(vote)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get new_vote_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    vote = Vote.create(title: 'My Vote', deadline: '2021-03-07 00:51:19')
    it 'returns http success' do
      get edit_vote_path(vote)
      expect(response).to have_http_status(:success)
    end
  end
end
