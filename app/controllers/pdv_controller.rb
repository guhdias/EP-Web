class PdvController < ApplicationController
	before_action :authenticate_usuario!

  def index
  	@produtos = Produto.pdv(params[:search])
  end
end
