class Categoria < ActiveRecord::Base
	 self.table_name = "categorias"
	 validates_with ValidateUnaccent, model: self
end
