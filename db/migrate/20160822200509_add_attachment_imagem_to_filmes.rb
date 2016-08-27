class AddAttachmentImagemToFilmes < ActiveRecord::Migration
  def self.up
    change_table :filmes do |t|
      t.attachment :imagem
    end
  end

  def self.down
    remove_attachment :filmes, :imagem
  end
end
