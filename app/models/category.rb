# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
    has_many :tasks

    #para validar que se escriba
    validates :name, :description, presence: true
    #validacion de unicidad para que no se repita el mismo nombre de la categoria, se usa
    #case_insensitive para que tampoco permita las minusculas o mayus con el mismo nombre de category
    validates :name, uniqueness: { case_insensitive: false } # para que haga la validacion de introducir datos diferentes
end
