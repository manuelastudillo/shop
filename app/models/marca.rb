class Marca < ActiveRecord::Base
validates_with ValidateUnaccent, model: self
 after_create :update_slug
 before_update :assign_slug









































 def to_param
     slug
 end


 private
 
def assign_slug
    self.slug = "#{ nombre.parameterize }"
end
 
def update_slug
    update_attributes slug: assign_slug
end

end
