class Patient < ApplicationRecord
    validates :name, :age, :phone, :address, presence: true
  end
  