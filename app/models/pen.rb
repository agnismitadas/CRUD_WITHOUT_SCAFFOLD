class Pen < ApplicationRecord
    validates :name_of_company, presence: true
    validates :ink_colour, presence: true
    validates :no_of_pens, presence: true
end
