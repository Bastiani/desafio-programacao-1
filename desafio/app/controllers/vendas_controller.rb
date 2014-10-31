class VendasController < ApplicationController
	def resultado
		@resultado = Vendas.resultado
	end
	
	def importar
		Vendas.importar(params[:file])
		redirect_to :action => "resultado"
	end
end
