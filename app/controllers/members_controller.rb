class MembersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @member = Member.new
  end

  def create
  @member = Member.new(params[:member])  

    if @member.save
      flash[:status] = TRUE
      flash[:alert] = 'You have Successfully Registered.'
    else
      flash[:status] = FALSE
      flash[:alert] = @member.errors.full_messages
    end

    redirect_to register_path
  end
end
