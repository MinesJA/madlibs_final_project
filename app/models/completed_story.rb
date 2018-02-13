class CompletedStory < ApplicationRecord
  belongs_to :template
  belongs_to :user


  def self.insert_words(template_instance, words_array)
    #method on instance of template
    completed_story = words.each do |key,value|
      key = "##{key}#"
      template.story_template.sub! key, value
    end
    completed_story
  end


  def self.create_completed_story(template_instance, words_array)
    finished_story = self.insert_words(template_instance, words_array)

    completed_story_instance = self.create!(user_id: current_user.id, template_id: template_instance.id, finished_story: finished_story)
  end

end
