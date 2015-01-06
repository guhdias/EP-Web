class UsuariosController < ApplicationController
  before_action :authenticate_usuario!
  
  def destroy
    if current_usuario.admin?
    	@usuario = Usuario.find(params[:id])
      @usuario.destroy

      if @usuario.destroy
          redirect_to gerenciar_usuarios_index_path, notice: "Usuário excluído com sucesso."
      end
    else
      redirect_to produtos_path, notice: "Você não tem permissão para acessar esse recurso."
    end
  end

  def admin
    if current_usuario.admin?
    	@usuario = Usuario.find(params[:id])
    	if @usuario.admin?
    		redirect_to gerenciar_usuarios_index_path, notice: "O usuário já é administrador."
    	else
      	@usuario.update_attribute :admin, true
      	redirect_to gerenciar_usuarios_index_path, notice: "O usuário agora é administrador."
      end
    else
        redirect_to produtos_path, notice: "Você não tem permissão para acessar esse recurso."
    end
  end
end
