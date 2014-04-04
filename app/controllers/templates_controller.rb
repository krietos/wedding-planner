class TemplatesController < ApplicationController
  def index
    @templates = Template.all
    render('index.html.erb')
  end

  def create
    @template = Template.new(params[:template])
    @template.save
    redirect_to('/templates/')
  end

  def show
    @template = Template.find(params[:id])
    render('show.html.erb')
  end
end
