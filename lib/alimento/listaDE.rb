module ListaDE
    
    Nodo = Struct.new(:valor, :siguiente, :anterior)
    
    class ListaDE
        
        attr_accessor :cabeza,:cola,
        
        def initialize()
            @cabeza = nil
            @cola = nil
        end
        
        def insertar_cabeza(nuevoNodo)
            if nuevoNodo.class == Nodo #Nodo
                @aux = nuevoNodo
            else
                @aux = Nodo.new(nuevoNodo,nil,nil)
            end
            
            if @cabeza != nil
    			@cabeza.anterior = @aux
    			@aux.siguiente = @cabeza
    			@cabeza = @aux
    		else
    			@cabeza = @aux
    			@cola = @aux
            end
    	end

        def insertar_cola(nuevoNodo)
            if nuevoNodo.class == Nodo #Nodo
                @aux = nuevoNodo
            else
                @aux = Nodo.new(nuevoNodo,nil,nil)
            end
            
            if @cola != nil
    			@cola.siguiente = @aux
    			@aux.anterior = @cola
    			@cola = @aux
    		else
    			@cabeza = @aux
    			@cola = @aux
            end
        end

    end
    
end