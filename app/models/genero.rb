class Genero < ApplicationRecord
	paginates_per 8
    has_many :filmes
		has_many :user, through: :filme
		validates :nome, presence:{:message=>"Campo Nome é obrigatório"}
end
