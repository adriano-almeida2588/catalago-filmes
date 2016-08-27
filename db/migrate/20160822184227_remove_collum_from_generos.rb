class RemoveCollumFromGeneros < ActiveRecord::Migration[5.0]
  def change
    remove_column :generos, :filme_id, :string
  end
end
