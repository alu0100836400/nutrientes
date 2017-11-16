# = alimento.rb
#
# Autor::   Javier Alberto Martín
# Web::     https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100836400
#
# === Clase Alimento
#
# Definición de la clase _Alimento_ compuesta por
# * metodo initialize
# * metodo get_proteinas
# * metodo get_glucidos
# * metodo get_lipidos
# * metodo get_nombre
# * metodo to_s

module Alimento
    
    class Alimento
        # attr_accessor :nombre, :proteinas, :glucidos, :lipidos,
        
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