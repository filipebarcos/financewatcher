class LoginsController < ApplicationController

  def new
  end

  def create
    reset_session

    user = Authenticator.auth(params[:email], params[:password])

    if user
      session[:user_id] = user.id
      redirect_to root_path, :notice => t("flash.logins.create.notice")
    else
      flash.now[:alert] = t("flash.logins.create.alert")
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end