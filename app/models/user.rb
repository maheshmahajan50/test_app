class User < ApplicationRecord
  has_and_belongs_to_many :insurances, association_foreign_key: :insurance_id

  enum role: [:employee, :admin]
end
