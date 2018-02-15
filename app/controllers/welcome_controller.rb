class WelcomeController < ApplicationController
  before_action :require_logged_in

  def home
    @templates = Template.all

    @rated_templates = Template.all.select {|template| template.avg_rating != nil}
    @most_popular_template = @rated_templates.sort_by{ |template| template.avg_rating }.last

    num = @most_popular_template.completed_stories.count - 1
    num = rand(0..num)
    @random_story = @most_popular_template.completed_stories[num]
    # picks random story off most_popular_template

  end



end
