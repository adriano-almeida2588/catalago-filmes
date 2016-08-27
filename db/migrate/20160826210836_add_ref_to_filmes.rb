class AddRefToFilmes < ActiveRecord::Migration[5.0]
  def change
    add_reference :filmes, :user, foreign_key: true
  end
end
