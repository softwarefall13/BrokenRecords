class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def check_login
    if !session[:member_id]
      flash[:status] = FALSE
      flash[:alert] = 'You need to be logged in first'

      redirect_to login_path
    else
      @member = Member.find(session[:member_id])
      $members_first_name = @member.first_name
    end
  end



end
