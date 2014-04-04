class UsersController < ApplicationController
  def index
    @users = User.all
    render('index.html.erb')
  end

  def create
    @users = User.all
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "user saved."
      redirect_to('/users/')
    else
      flash[:notice] = "Please enter a name and a percentage."
      render('index.html.erb')
    end
  end

  def show
    @user = User.find(params[:id])
    render('show.html.erb')
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:user])
      flash[:notice] = "user Updated."
      render('show.html.erb')
    else
      flash[:notice] = "Check all information and resave."
      redirect_to("/users/#{@user.id}")
    end
  end

  def destroy
    @user = user.find(params[:id])
    @user.destroy
    redirect_to('/users/')
  end
end
