class CreateCompletedStories < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_stories do |t|
      t.text :finished_story
      t.integer :temp_rating
      t.integer :user_id
      t.integer :template_id

      t.timestamps
    end
  end
end
