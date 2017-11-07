module Alimento

    class Alimento
        def initialize(nombre, pro, glu, lip)
            @nombre = nombre
            @proteinas = pro
            @glucidos = glu
            @lipidos = lip
        end
        
        def get_proteinas
            return @proteinas
        end
        
        def get_glucidos
            return @glucidos
        end
        
        def get_lipidos
            return @lipidos
        end
        
        def get_nombre
            return @nombre
        end
        
        def to_s
                "proteinas: " + @proteinas.to_s + 
                "\nglucidos: " + @glucidos.to_s + 
                "\nlipidos: " + @lipidos.to_s
        end
    end
end