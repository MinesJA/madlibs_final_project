class CompletedStoriesController < ApplicationController
  before_action :require_logged_in

  def new
  end

  def create
    @template = Template.find_by(id: params[:template_id])
    @finished_story = CompletedStory.insert_words(@template, params[:words])
    @completed_story = CompletedStory.new(user_id: current_user.id, template_id: @template.id, finished_story: @finished_story)

    if @completed_story.valid?
      @completed_story.save
    else
      render template_path(@template)
    end
    redirect_to @completed_story
  end

  def index
    @completed_stories = CompletedStory.all
  end

  def show
    @completed_story = CompletedStory.find(params[:id])
  end

  def update
    @completed_story = CompletedStory.find(params[:id])
    @completed_story.temp_rating = params[:completed_story][:temp_rating]
    @completed_story.save


    avg_rating = @completed_story.template.calculate_average_rating

    @completed_story.template.avg_rating = avg_rating
    @completed_story.template.save

    flash[:success] = "Great! You gave '#{@completed_story.template.title}' a rating of #{params[:completed_story][:temp_rating]}"
    render :show
  end

end
