require 'spec_helper'

describe Indice_glucemico do
        
    before :each do
        @compota1 = [6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9]
        @glucosa1 = [4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1]
        @compota2 = [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]
        @glucosa2 = [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]
        
        @compota_varios = [@compota1, @compota2]
        @glucosa_varios = [@glucosa1, @glucosa2]
        
        @o_ig = Indice_glucemico.new()
        @IG = @o_ig.ig(@compota_varios, @glucosa_varios)
    end

    describe "Indice glucemico" do
    	it "Compota" do
    		expect(@IG).to eq(54.499780077077745)
    	end
    end
end