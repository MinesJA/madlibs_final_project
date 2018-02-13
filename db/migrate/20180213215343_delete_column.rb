class DeleteColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :templates, :player_id
  end
end
