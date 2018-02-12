class CreateCompletedStories < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_stories do |t|
      t.integer :user_id
      t.integer :template_id
      t.text :finished_story

      t.timestamps
    end
  end
end
