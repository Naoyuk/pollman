# frozen_string_literal: true

# Static Pages' controller
class StaticPagesController < ApplicationController
  def home; end

  def help
    render :help
  end
end
