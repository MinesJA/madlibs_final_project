class WelcomeController < ApplicationController
  before_action :require_logged_in
  

  def home
    @templates = Template.all
    @random_template = Template.random_template
    @most_popular_template = Template.most_popular_template
    @story_from_pop_temp = CompletedStory.story_from_popular_template
  end



end
