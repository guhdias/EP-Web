class Tipo < ActiveRecord::Base
	has_many :produtos
	
	validates_presence_of :tipo, message: ": Digite o tipo."
end
