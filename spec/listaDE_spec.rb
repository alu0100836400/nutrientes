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
    		
    		it "Existe el nodo para la lista" do
                expect(@nodo.class) == ListaDE::Nodo
            end

    		it "Existe un struct nodo con anterior y siguiente" do
    		    expect(@nodo).to have_attributes(:valor => 4, :siguiente =>nil, :anterior =>nil)
    		end
    		
	    	it "Existe un Nodo de la lista con su dato, su siguiente y su anterior" do
	            expect(@lista.cabeza != nil && @lista.siguiente == nil && @lista.anterior == nil) 
	    	end
    		
    		
    	end
    end
end