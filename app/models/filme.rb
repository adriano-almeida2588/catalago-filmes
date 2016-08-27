class Filme < ApplicationRecord
	has_attached_file :imagem, :styles => {:medium => "300x300>", :thumb => "100x100>" }, :default_url=> :set_default_url
	validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/
    belongs_to :genero
		belongs_to :user
    validates :titulo, presence:{:message=>"Campo Título é obrigatório"}
		validates :genero_id, presence:{:message=>"Campo Gênero é obrigatório"}
    paginates_per 8

		private

	 def set_default_url
		 "/images/:style/placeholder.png"
	 end
end
