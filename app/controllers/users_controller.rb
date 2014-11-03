class UsersController < ApplicationController
  before_action :set_user, (:edit, :new, :create)

  def index
    @users = User.all
  end

  def new
    @user = User.new(find[:params_id])
  end

  def create
    @user = User.new(find[:params_id])
  end
