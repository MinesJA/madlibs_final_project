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

end
