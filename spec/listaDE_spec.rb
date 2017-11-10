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
    		
    		it "Existe una lista con su cabeza y cola" do
                expect(@lista.cabeza != nil && @lista.cola != nil)
            end
            
            it "Existe un método para insertar por la cabeza" do
    		    expect(@lista).to respond_to :insertar_cabeza
    		end
    		
		    it "Se puede insertar un elemento en la lista" do
           	    @lista.insertar_cabeza(@nodo)
            	expect(@lista.cabeza) == (@nodo)
        	end
        	
    		it "Se puede insertar varios nodos en la lista" do
        		@lista.insertar_cabeza(@nodo2)
        		@lista.insertar_cabeza(@nodo3)
        		expect(@lista.cabeza) == (@nodo3)
    		end
    		
    		it "Existe un método para extraer por la cabeza" do
    	    	expect(@lista).to respond_to :extraer_cabeza
    		end
    		
    		it "Se puede extraer un elemento de la lista" do
        		@lista.extraer_cabeza()
        		expect(@lista.cabeza) == (@nodo2)
    		end
		
		    it "Existe un método para extraer por el final" do
                expect(@lista).to respond_to :extraer_cola
            end

            it "Se puede extraer un elemento de lista" do
                @lista.extraer_cola()
                expect(@lista.cabeza) == (@nodo2)
            end
    		
    	end
    end
end