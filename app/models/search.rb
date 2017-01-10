class Search
 def initialize(page, page_size, keywords)
  @page = page
  @page_size = page_size
  @offset = page_size * page
  @keywords = keywords
 end


 def brands_by_name
  if @keywords.present?
   brands = Brand.where(name_condition).order(:name).offset(@offset).limit(@page_size)
   @number_of_records = Brand.where(name_condition).count
  else
   brands = Brand.order(:name).offset(@offset).limit(@page_size)
   @number_of_records = Brand.count
  end
 
  return brands, number_of_pages
 end

 def marcas_by_name
  if @keywords.present?
   marcas = Marca.where(nombre_condition).order(:nombre).offset(@offset).limit(@page_size)
   @number_of_records = Marca.where(nombre_condition).count
  else
   marcas = Marca.order(:nombre).offset(@offset).limit(@page_size)
   @number_of_records = Marca.count
  end
 
  return marcas, number_of_pages
 end

 def categorias_by_name
  if @keywords.present?
   categorias = Categoria.where(nombre_condition).order(:nombre).offset(@offset).limit(@page_size)
   @number_of_records = Categorias.where(nombre_condition).count
  else
   categorias = Categoria.order(:nombre).offset(@offset).limit(@page_size)
   @number_of_records = Categoria.count
  end
 
  return categorias, number_of_pages
 end

 private

 def name_condition
  name_condition = "unaccent(lower(name)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
 end

 def nombre_condition
  nombre_condition = "unaccent(lower(nombre)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
 end

 def number_of_pages
  number_of_pages = (@number_of_records % @page_size) == 0 ? 
  @number_of_records / @page_size - 1 : @number_of_records / @page_size
 end
end