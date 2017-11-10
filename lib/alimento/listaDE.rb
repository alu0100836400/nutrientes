module ListaDE
    
    Nodo = Struct.new(:valor, :siguiente, :anterior)
    
    class ListaDE
        
        attr_accessor :cabeza,:cola,
        
        def initialize()
            @cabeza = nil
            @cola = nil
        end
        
        

    end
    
end