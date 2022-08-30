class User < ApplicationRecord
  enum role: [:employee, :admin]
end
