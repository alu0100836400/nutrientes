# = nutrientes.rb
#
# Autor::   Javier Alberto Martín
# Web::     https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100836400
#
# === Clase Nutrientes
#
# Definición de la clase _Nutrientes_ compuesta por
# * metodo initialize
# * metodo <=>
# * metodo kc_proteinas
# * metodo kc_glucidos
# * metodo kc_lipidos
# * metodo sumar_kc


module Alimento
    class Nutrientes
        
        include Comparable
        
        def initialize(alimento)
            @alimento_ = alimento
        end
        
        def <=>(other)
            self.sumar_kc<=>other.sumar_kc
        end
        
        def kc_proteinas()
            return @alimento_.get_proteinas*4
        end
        
        def kc_glucidos()
            return @alimento_.get_glucidos*4
        end
        
        def kc_lipidos()
            return @alimento_.get_lipidos*9
        end
        
        def sumar_kc()
            return kc_proteinas()+kc_glucidos()+kc_lipidos()
        end
    end
end