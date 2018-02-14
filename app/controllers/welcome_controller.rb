class WelcomeController < ApplicationController
  before_action :require_logged_in

  def home
    @templates = Template.all
    @most_popular_template = Template.all.sort_by{ |template| template.avg_rating }.last

    num = @most_popular_template.completed_stories.count - 1
    num = rand(0..num)
    @random_story = @most_popular_template.completed_stories[num]
    # picks random story off most_popular_template

  end



end
