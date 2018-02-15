class TemplatesController < ApplicationController
before_action :require_logged_in

  def index
    @templates = Template.all
  end

  def show
    @template = Template.find_by(id: params[:id])
    @hash = @template.find_key_words
  end

  def categoryindex
    @categories = Template.categories
    @templates = Template.all
  end

  def categoryshow
    @templates = Template.all.select do |each_story|
       each_story.category == params[:category]
      end

    @category = params[:category]
  end

  def edit
    @template = Template.find(params[:id])
  end

  def update
    @template = Template.find(params[:id])

    if @template.update(template_params)
      redirect_to category_path(template_params[:category])
    else
      render :edit
    end
  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)
    @template.user_id = current_user.id

    if @template.valid?
      @template.save
      redirect_to category_path(template_params[:category])
    else
      render :new
    end
  end

  private

  def template_params
    params.require(:template).permit(:title, :story_template, :category, :rating, :avatar)
  end


end
