module Alimento
    class Nutrientes
        
        def initialize(alimento)
            @alimento_ = alimento
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