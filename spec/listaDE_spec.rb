require 'spec_helper'
require_relative '../lib/alimento/listaDE'


describe ListaDE::ListaDE do
	before :each do
	 	@lista = ListaDE::ListaDE.new()
        @nodo = ListaDE::Nodo.new(4,nil,nil)
        @nodo2 = ListaDE::Nodo.new(8,nil,nil)
        @nodo3 = ListaDE::Nodo.new(12,nil,nil)
        
	end
	describe "ListaDE" do
	    context "LISTA DOBLEMENTE ENLAZADA" do	
	        
    		it "Existe la clase listaDE" do
    		    expect(@lista.class) == ListaDE::ListaDE
    		end
    	end
    end
end