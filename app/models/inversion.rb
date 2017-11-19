class Inversion < ApplicationRecord
    validates :usuario, :campana, :dinero, presence: true
end
