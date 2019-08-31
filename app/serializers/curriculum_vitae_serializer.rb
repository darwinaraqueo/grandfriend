class CurriculumVitaeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :confidence_level, :picture, :description
  
end
