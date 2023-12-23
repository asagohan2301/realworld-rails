class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { in: 6..20 }
end
