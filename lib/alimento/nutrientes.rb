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