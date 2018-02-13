class TemplatesController < ApplicationController


  def index
    @templates = Template.all
  end

  def show
    @template = Template.find_by(id: params[:id])
    @hash = Template.find_key_words(@template.story_template)
  end

end
