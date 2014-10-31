class VendasController < ApplicationController
	def resultado
		@resultado = Vendas.resultado
	end
	
	def importar
		if params[:file] != nil
			Vendas.importar(params[:file])
			redirect_to :action => "resultado"
		else
			redirect_to root_url
		end		
	end
end
