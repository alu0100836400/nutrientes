module Alimento
    class Nutrientes
        def initialize(alimento)
            @alimento_ = alimento
        end
        
        def kc_proteinas()
            return @alimento_.proteinas*4
        end
        
        def kc_glucidos()
            return @alimento_.glucidos*4
        end
        
        def kc_lipidos()
            return @alimento_.lipidos*9
        end
        
        def sumar_kc()
            return kc_proteinas()+kc_glucidos()+kc_lipidos()
        end
    end
end