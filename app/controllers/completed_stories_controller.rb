class CompletedStoriesController < ApplicationController


  def new
  end

  def create
    @template = Template.find_by(id: params[:template_id])
    @completed_story = CompletedStory.new
    @words = params[:words]

    byebug
  

    @template.insert_words(@words)
    @completed_story.save_insert(@template)

    redirect_to @completed_story
  end

  def show
    @completed_story = CompletedStory.find(params[:id])
  end
end
