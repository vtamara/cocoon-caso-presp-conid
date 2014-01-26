class Caso < ActiveRecord::Base
    has_many :presponsable, 
      :through => :caso_presponsable
    has_many :caso_presponsable, 
      dependent: :destroy,
      foreign_key: :id_caso,
      validate: true
    accepts_nested_attributes_for :caso_presponsable, 
      allow_destroy: true,
      reject_if: :all_blank
end
