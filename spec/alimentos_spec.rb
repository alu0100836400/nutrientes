require 'spec_helper'
require_relative '../lib/alimento/carne'


describe Alimento::Carne do
	before :each do
	 	@carne = Alimento::Carne.new()
        
	end
	describe "Carne" do
	    context "ALIMENTO CÁRNICO" do	
	        
    		it "Existe la clase Carne" do
    		    expect(@carne.class) == Alimento::Carne
    		end
    		
    	end
    end
end