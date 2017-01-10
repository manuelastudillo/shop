class Brand < ActiveRecord::Base
	validates_with ValidateUnaccent, model: self
end
