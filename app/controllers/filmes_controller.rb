    class FilmesController < ApplicationController

        before_action :authenticate_user!
        before_action :set_params, only: [:edit, :show, :update, :destroy]

        def index
            @filmes = Filme.where(user_id: current_user.id).page params[:page]
        end

        def new
            @filme = Filme.new
            @filme.user_id = current_user.id
        end

        def edit
        end

        def update
            respond_to do |format|
                if @filme.update(filme_params)
                    format.html { redirect_to filmes_path, notice:'Filme atualizado com sucesso'}
                 else
                  format.html { render action: "edit" }
              end
          end
       end

      def show

      end

      def create
         @filme = Filme.create(filme_params)
             respond_to do |format|
                 if @filme.save
                  format.html { redirect_to filmes_path, notice:'Filme salvo com sucesso' }
                else
                  format.html { render action: "new"  }
              end
          end
      end

    def destroy
        if @filme.destroy
          flash[:notice] = "Filme excluído com sucesso"
          redirect_to filmes_path
        end
    end

    private

        def set_params
          @filme = Filme.find(params[:id])
        end

        def filme_params
          params.require(:filme).permit(:titulo, :cartaz, :sinopse, :diretor, :data_lancamento, :genero_id, :produtora, :imagem, :user_id)
        end
    end
