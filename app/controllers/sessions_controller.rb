class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by(name: params[:name])
    if member && member.authenticate(params[:password])
      session[:member_id] = member.id
      redirect_to posts_path
    else
      redirect_to login_url, alert: "Invalid input(s)"
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to pages_path, notice: "You've logged out"
  end
end