class CompletedStory < ApplicationRecord
  belongs_to :template
  belongs_to :user

  def self.insert_words(template_instance, words_array)
    story = template_instance.story_template

    words_array.each do |key,value|
      key = "##{key}#"
      story.sub! key, value
    end
    #returns string of story filled in with user submissions "The fat lady went to...."
    story
  end



end
