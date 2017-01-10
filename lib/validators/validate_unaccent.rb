class ValidateUnaccent < ActiveModel::Validator
  def validate(record)
    records = options[:model].all
    records.each do |r|
      if I18n.transliterate(r.nombre.downcase) == I18n.transliterate(record.nombre.downcase) &&
         r.id != record.id
        record.errors[:nombre] << 'Ya Existe'
      end
    end
  end
end