# frozen_string_literal: true

class VotesController < ApplicationController
  before_action :set_vote, only: %i[show edit update destroy]

  def index
    @votes = Vote.all
    # TODO: ユーザーモデルを作成したら、そのユーザーが参加する、またはそのユーザーの作成したVoteのみを降順に取得
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to votes_path, notice: 'Vote was successfully created.'
    else
      render :new
    end
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    if @vote.update(vote_params)
      redirect_to votes_path, notice: 'Vote was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @vote.destroy
      redirect_to votes_path, alert: 'Vote was deleted.'
    else
      redirect_to votes_path, alert: 'Delete is unsuccessfull.'
    end
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:title, :deadline)
  end
end
