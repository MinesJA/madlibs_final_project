class CompletedStoriesController < ApplicationController


  def new
  end

  def create
    @completed_story = CompletedStory.new
    @template = Template.find_by(id: params[:template_id])
    @words = params[:words]
    @words.each do |key,value|
      @template.story_template.sub! key, value
    end
    @completed_story.user_id = current_user.id
    @completed_story.template_id = @template.id
    @completed_story.finished_story = @template.story_template
    @completed_story.save
    redirect_to @completed_story
  end

  def show
    @completed_story = CompletedStory.find(params[:id])
  end
end
