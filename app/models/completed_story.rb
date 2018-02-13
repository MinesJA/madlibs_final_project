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

  def self.create_story(template_instance, words_array, current_user)
    finished_story = self.insert_words(template_instance, words_array)

    #creates an instance of the completed story with user submission in the database

    completed_story = self.create(user_id: current_user.id, template_id: template_instance.id, finished_story: finished_story)
  end

end
