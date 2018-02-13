class Template < ApplicationRecord
  belongs_to :user
  has_many :completed_stories
<<<<<<< HEAD
  has_many :users, through: :completed_stories
  # belongs_to :user

=======
>>>>>>> 5b89f35aa0306cb80f045482d1b3b17a724a849c


  def find_key_words
    hash = {}
    key_words = self.story_template.scan(/#(.*?)#/).flatten
    #returns array of all key words stripped of "#". ex: "adjective_1"

    key_words.each do |key|
      hash[key] = nil
    end
    hash
  end



end
