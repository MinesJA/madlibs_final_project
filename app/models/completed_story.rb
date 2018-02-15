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

  def self.random_story
    num = CompletedStory.count - 1
    CompletedStory.all[rand(0..num)]
  end

  def self.story_from_popular_template
    most_popular_template = Template.most_popular_template

    num = most_popular_template.completed_stories.count - 1
    most_popular_template.completed_stories[num]
  end





end
