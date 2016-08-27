class RemoveCollumFromFilmes < ActiveRecord::Migration[5.0]
  def change
    remove_column :filmes, :genero, :string
  end
end
