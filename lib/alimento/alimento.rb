module Alimento
    
    class Alimento
        
        attr_accessor :nombre, :proteinas, :glucidos, :lipidos,
        
        def initialize(nombre, pro, glu, lip)
            @nombre = nombre
            @proteinas = pro
            @glucidos = glu
            @lipidos = lip
        end
        
        def to_s
                "proteinas: " + @proteinas.to_s + 
                "\nglucidos: " + @glucidos.to_s + 
                "\nlipidos: " + @lipidos.to_s
        end
    end
    
end