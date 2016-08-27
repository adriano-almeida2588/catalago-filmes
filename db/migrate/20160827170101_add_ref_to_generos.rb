class AddRefToGeneros < ActiveRecord::Migration[5.0]
  def change
    add_reference :generos, :user, foreign_key: true
  end
end
