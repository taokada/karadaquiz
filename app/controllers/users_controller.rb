class UsersController < ApplicationController


  before_action:set_current_user


  def signup
  end

  def create
    @user=User.new(name:params[:name],
                   email:params[:email],
                   password:params[:password])
    @user.save
    session[:user_id]=@user.id
    redirect_to("/home/top")
  end

  def login_form
  end

  def login
    @user =User.find_by(email: params[:email],
                      password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      session[:user_id]=@user.id
      redirect_to("/home/top")
    else
      @error_message="メールアドレスまたはパスワードが間違っています"
      @email =params[:email]
      @password =params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/home/top")
  end


end
