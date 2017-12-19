class Quality < ApplicationRecord

	#No attr_accessible since all attributes are whitelisted in application.rb
	belongs_to :plan, optional: true
	
end
