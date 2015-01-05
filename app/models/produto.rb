class Produto < ActiveRecord::Base
	belongs_to :tipo
	
	validates_presence_of :tipo_id, message: "Escolha um Tipo"
	validates_presence_of :cbarras, message: "Digite o codigo de barras"
	validates_presence_of :descricao, message: "Digite uma descrição"
	validates_presence_of :valor, message: "Digite um valor"
	validates_presence_of :saldo, message: "Informe o saldo do produto"
	
	def self.search(search)
	  if search
	    where('descricao LIKE ? OR cbarras = ?', "%#{search}%", search)
	  else
	    all
	  end
	end	
	
	def self.pdv(pdv)
	  if pdv
	    where('cbarras = ?', pdv)
	  else
	    none
	  end
	end	
	
end
