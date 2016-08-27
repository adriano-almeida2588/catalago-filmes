class HomeController < ApplicationController
  def index
    @images_filmes = Filme.all
  end
end
