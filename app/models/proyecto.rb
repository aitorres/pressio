class Proyecto < ApplicationRecord
  validates :nombre, presence: true, length: { minimum: 5 }
  validates :sinopsis, presence: true, length: { minimum: 5 }
  validates :descripcion, presence: true, length: { minimum: 100 } 
  validates :autor, :solicita_talentos, :solicita_dinero, presence: true
end
