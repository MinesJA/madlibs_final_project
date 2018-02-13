class TemplatesController < ApplicationController


  def index
    @templates = Template.all
  end

  def show
    @template = Template.find_by(id: params[:id])
    @hash = @template.find_key_words
  end

  def categoryindex
    @templates = Template.all
  end

  def categoryshow
    @templates = Template.all.select do |each_story|
       each_story.category == params[:category]
      end
  end


end
