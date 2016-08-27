class AddCollumsToFilmes < ActiveRecord::Migration[5.0]
  def change
    add_column :filmes, :titulo, :string
    add_column :filmes, :cartaz, :string
    add_column :filmes, :sinopse, :string
    add_column :filmes, :diretor, :string
    add_column :filmes, :data_lancamento, :date
    add_column :filmes, :genero, :string
    add_column :filmes, :produtora, :string
  end
end
