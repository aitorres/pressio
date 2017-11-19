class Talento < ApplicationRecord
	validates :talento, presence: true, length: { minimum: 1 }
    validates :campana, presence: true
	validates :usuario, presence: true
end
