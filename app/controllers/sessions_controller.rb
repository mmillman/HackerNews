class SessionsController < ApplicationController
  def new
  end

  def create
    if log_in(params[:session][:username], params[:session][:password])
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
