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
    belongs_to:category
    #has_many : tasks

    validates :name, :description, presence: true
    validates :name, uniqueness: { case_insensitive: false } # para que haga la validacion de introducir datos diferentes
end
