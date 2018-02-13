class TemplatesController < ApplicationController

  def index
    @templates = Template.all
  end

  def show
    @template = Template.find_by(id: params[:id])
    @hash = {}
    array = @template.story_template.split(" ").select {|word| word.include?("#")}
    array.each do |key|
      @hash[key] = "word"
    end
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
