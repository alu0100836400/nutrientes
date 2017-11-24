class Indice_glucemico
    
    include Enumerable
    
    def initialize()
        @delta = 5
    end
    
    def ig(alimento, glucosa)
        aibc_alim = []
        alimento.each do |i|
            suma = 0
            i.each_index do |j|
                if (j != 0)
                    suma += (((i[j] - i[0]) + (i[j - 1] - i[0])) /2)*@delta
                end
            end
            aibc_alim << suma
        end
        aibc_gluc = []
        glucosa.each do |i|
            suma = 0
            i.each_index do |j|
                if (j != 0)
                    suma += (((i[j] - i[0]) + (i[j - 1] - i[0])) /2)*5
                end
            end
            aibc_gluc << suma
        end
        
        ig_ind = []
        aibc_alim.each_index { |i| ig_ind << ((aibc_alim[i] / aibc_gluc[i]) * 100)}
        suma = 0
        ig_ind.each{ |i| suma += i}
        return (suma / ig_ind.length)
    end
    
end