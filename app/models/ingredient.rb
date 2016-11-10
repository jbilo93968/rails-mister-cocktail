class Ingredient < ApplicationRecord
  class Ingredient < ActiveRecord::Base
    has_many :doses
    validates :name, presence: true, uniqueness: true
  end
end
