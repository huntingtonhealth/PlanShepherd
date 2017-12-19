class Network < ApplicationRecord
	
	#No attr_accessible since all attributes are whitelisted in application.rb
	has_many :plans
	
end
