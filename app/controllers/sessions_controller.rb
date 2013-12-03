class SessionsController < ApplicationController
  before_filter :check_login, :only => [:index]
  #check
  def new
  end

  def create
    member = Member.validate_login(
        params[:session][:email],
        params[:session][:password]
        )

    if member
      session[:member_id] = member.id
      redirect_to :controller => 'members'
    else
      flash[:status] = FALSE
      flash[:alert] = "Invalid Email and/or Password! "

      redirect_to login_path
    end
  end

  def destroy
      session[:member_id] = nil
      redirect_to login_path
  end

end
