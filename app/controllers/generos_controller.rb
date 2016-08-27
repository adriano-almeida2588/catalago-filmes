    class GenerosController < ApplicationController

    	before_action :authenticate_user!
    	before_action :set_params, only:[:edit, :show, :update, :destroy]

      def index
      	@generos= Genero.where(user_id: current_user.id).page params[:page]
      end

      def new
      	@genero = Genero.new
        @genero.user_id = current_user.id
      end

      def create
      	@genero = Genero.create(genero_params)
      	if @genero.save
      		flash[:notice] = "Gênero salvo com sucesso"
      		redirect_to generos_path
      	end
      end

      def edit
      end

      def update

      	if @genero.update(genero_params)
      		flash[:notice] = "Gênero atualizado com sucesso"
      		redirect_to generos_path
      	end

      end

      def show
      end

      def destroy
      	if @genero.destroy
      		flash[:notice] = "Gênero excluído com sucesso"
      		redirect_to generos_path
      	end
      end

      private

      	def set_params
      		@genero = Genero.find(params[:id])
      	end

      	def genero_params
      		params.require(:genero).permit(:nome, :user_id)
      	end
    end
