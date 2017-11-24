require 'spec_helper'

describe Alimento::Carne do
	before :each do
	 	@carne = Alimento::Carne.new("Ternera",1,2,3)
        
	end
	describe "Carne" do
	    context "ALIMENTO CÁRNICO" do	
	        
    		it "Existe la clase Carne" do
    		    expect(@carne.class) == Alimento::Carne
    		end
    		
    		it "Carne es heredada de alimento" do
    		    expect(@carne.class) == Alimento
    		end
    		
    	end
    end
end