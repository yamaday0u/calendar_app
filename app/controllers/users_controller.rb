class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/blogs/index/#{@user.id}")
    else
      render("users/new")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])#authenticateはgem bcryptを有効にすると使える。
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/blogs/index/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("/users/login_form")
    end
  end


end
