class AddColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :completed_stories, :user_id
    add_column :completed_stories, :player_id, :integer
    add_column :templates, :player_id, :integer
    add_column :templates, :author_id, :integer
  end
end
