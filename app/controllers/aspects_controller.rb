class AspectsController < ApplicationController

 def index
    @aspects = Aspect.all
    render('index.html.erb')
  end

  def create
    @user = User.find(params[:user_id])
    params[:aspect].each_key do |value|
      @template = Template.find(value)
      Aspect.create({name: @template.name, percentage: @template.percentage, user_id: @user.id})
    end


    redirect_to("/users/#{@user.id}")
    # if @aspect.save
    #   flash[:notice] = "aspect saved."
    #   redirect_to('/aspects/')
    # else
    #   flash[:notice] = "Please enter a name and a percentage."
    #   render('index.html.erb')
    # end
  end

  def show
    @aspect = Aspect.find(params[:id])
    render('show.html.erb')
  end

  def update
    @aspect = Aspect.find(params[:id])
    if @aspect.update(params[:aspect])
      flash[:notice] = "Account Updated."
      redirect_to("/aspects/#{@aspect.id}")
    else
      flash[:notice] = "Check all information and resave."
      redirect_to("/aspects/#{@aspect.id}")
    end
  end

  def destroy
    @aspect = Aspect.find(params[:id])
    @user = @aspect.user_id
    @aspect.destroy
    redirect_to("/users/#{@user}")
  end

end
