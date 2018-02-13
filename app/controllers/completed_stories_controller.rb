class CompletedStoriesController < ApplicationController
  before_action :require_logged_in

  def new
  end

  def create
    @template = Template.find_by(id: params[:template_id])

    @finished_story = CompletedStory.insert_words(@template, params[:words])

    @completed_story = CompletedStory.new(user_id: current_user.id, template_id: @template.id, finished_story: @finished_story)
    @completed_story.save
    redirect_to @completed_story
  end

  def show
    @completed_story = CompletedStory.find(params[:id])
  end

end
