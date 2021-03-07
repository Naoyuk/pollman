# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vote, type: :model do
  before do
    @vote = FactoryBot.build(:vote)
  end

  it 'is valid with a title and a deadline' do
    expect(@vote).to be_valid
  end

  it 'is invalid without a title' do
    @vote.title = nil
    @vote.valid?
    expect(@vote.errors[:title]).to include("can't be blank")
  end

  it 'is invalid without a deadline' do
    @vote.deadline = nil
    @vote.valid?
    expect(@vote.errors[:deadline]).to include("can't be blank")
  end
end
