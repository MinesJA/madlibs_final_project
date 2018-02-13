class Changecolumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :completed_stories, :player_id, :user_id
    rename_column :templates, :author_id, :user_id

  end
end
