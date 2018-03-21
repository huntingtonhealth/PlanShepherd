class Fpl < ApplicationRecord
	def self.getFPL(familySize)
		  select("fpls.*").from("fpls").where("fpls.nindivs = '#{familySize}' OR fpls.nindivs = 'eachAdd'")
	end	
end
