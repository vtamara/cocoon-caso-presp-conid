class Presponsable < ActiveRecord::Base
  has_many :caso, through: :caso_presponsable
  has_many :caso_presponsable, foreign_key: "id_presponsable", validate: true
end
