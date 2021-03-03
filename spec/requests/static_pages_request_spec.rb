# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get root_path
      # `get root_path
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status '200'
    end
  end
end
