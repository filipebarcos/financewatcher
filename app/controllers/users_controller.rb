class UsersController < ActionController::Base

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to login_path, :notice => t("flash.users.create.notice")
    else
      render :new
    end
  end

  def destroy
    if params[:id] == current_user.id
      @user = User.find_by_id(params[:id])
      @user.destroy
      flash[:notice] = t("flash.users.destroy.notice")
    else
      flash[:alert] = t("flash.users.destroy.alert")
    end
    redirect_to root_path
  end

end