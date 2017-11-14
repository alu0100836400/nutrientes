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
        
        def extraer_cabeza
            if @cabeza != nil
                @aux = @cabeza
                @cabeza = @aux.siguiente
                @aux
            else
                puts 'Lista vacia'
            end
        end
        
        def extraer_cola
            if @cola != nil
                @aux = @cola
                @cola = @aux.anterior
                @aux
            else
                puts 'Lista vacia'
            end
        end
        
        # def to_s
        #     aux = @cabeza
        #     #while aux.siguiente do
        #         puts aux.siguiente.valor.to_s
        #         aux = aux.siguiente
        #     #end
        # end

    end
end