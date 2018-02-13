class CompletedStoriesController < ApplicationController


  def new
  end

  def create
    @template = Template.find_by(id: params[:template_id])
    @completed_story = CompletedStory.create_story(@template, params[:words], current_user)

    redirect_to @completed_story
  end

  def show
    @completed_story = CompletedStory.find(params[:id])
  end

end
