class HomesController < ApplicationController
  def show
    @visits = Visit.all { |e| }
  end
end
