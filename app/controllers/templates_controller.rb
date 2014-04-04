class TemplatesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @templates = Template.all
    render('index.html.erb')
  end

  def create
    @templates = Template.all
    @template = Template.new(params[:template])
    if @template.save
      flash[:notice] = "Template saved."
      redirect_to('/templates/')
    else
      flash[:notice] = "Please enter a name and a percentage."
      render('index.html.erb')
    end
  end

  def show
    @template = Template.find(params[:id])
    render('show.html.erb')
  end

  def update
    @template = Template.find(params[:id])
    if @template.update(params[:template])
      flash[:notice] = "Template Updated."
      render('show.html.erb')
    else
      flash[:notice] = "Check all information and resave."
      redirect_to("/templates/#{@template.id}")
    end
  end

  def destroy
    @template = Template.find(params[:id])
    @template.destroy
    redirect_to('/templates/')
  end
end
