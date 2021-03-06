require 'spec_helper'

describe Alimento do
    # describe Nutrientes do
        
        before :each do
            @nutrientes = Alimento::Nutrientes.new(Alimento::Alimento.new("arroz",2,3,4))
        end
        
        it "comprobar que multiplica proteinas" do
            expect(@nutrientes.kc_proteinas).to eq(8)
        end
        
        it "comprobar que multiplica glucidos" do
            expect(@nutrientes.kc_glucidos).to eq(12)
        end
        
        it "comprobar que multiplica lipidos" do
            expect(@nutrientes.kc_lipidos).to eq(36)
        end
        
        it "comprobar suma de kilocalorias" do
            expect(@nutrientes.sumar_kc).to eq(56)
        end
        
        #p8
        
        it "comprobar que existe el método de comparación" do
            expect(@nutrientes).to respond_to('<=>')
        end
        
        context "#Comparaciones entre dos alimentos basado en sus kilocalorias" do
            before :each do
                @arroz = Alimento::Nutrientes.new(Alimento::Alimento.new("arroz",2,3,4))
                @pollo = Alimento::Nutrientes.new(Alimento::Alimento.new("pollo",20,30,40))
                @arroz2 = Alimento::Nutrientes.new(Alimento::Alimento.new("arroz",2,3,4))
            end
            it "El arroz es menor que el pollo" do
                expect(@arroz < @pollo).to eq(true)
            end
            
            it "El arroz es igual que otro arroz" do
                expect(@arroz == @arroz2).to eq(true)
            end
            
            it "El arroz es distinto que el pollo" do
                expect(@arroz == @pollo).to eq(false)
            end
        end
    # end

    # describe Alimento do
        
        before :each do
            @alimento = Alimento::Alimento.new("arroz",2,3,4)
        end
        
        it "comprobar que se guardan los datos en una instancia de la clase Alimento (proteinas)" do
            expect(@alimento.get_proteinas).to eq(2)
        end
        
        it "comprobar que se guardan los datos en una instancia de la clase Alimento (glucidos)" do
            expect(@alimento.get_glucidos).to eq(3)
        end
        
        it "comprobar que se guardan los datos en una instancia de la clase Alimento (lipidos)" do
            expect(@alimento.get_lipidos).to eq(4)
        end
        
        it "comprobar que un objeto es de una clase" do
            expect(@alimento).to be_instance_of(Alimento::Alimento)
        end
        
        it "comprobar que el alimento tiene nombre" do
            expect(@alimento.get_nombre).to be_truthy
        end
    # end
end

















#   it "comprobar que se muestran los datos" do
#         expect(@alimento.mostrar_datos).to match(/proteinas*glucidos*lipidos/)
#     end