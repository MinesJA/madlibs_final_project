class TemplatesController < ApplicationController


  def index
    @templates = Template.all
  end

  def show
    @template = Template.find_by(id: params[:id])
    @hash = @template.find_key_words
  end

end
