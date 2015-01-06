class GerenciarUsuariosController < ApplicationController
	before_action :authenticate_usuario!

	def destroy
    	@usuario = Usuario.find(params[:id])
    	@usuario.destroy
	end

	def admin
    	@usuario = Usuario.find(params[:id])
    	@usuario.admin
	end
end
