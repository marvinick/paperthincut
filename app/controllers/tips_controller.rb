class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
  end
end