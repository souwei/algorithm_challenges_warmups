class Pokemon < ApplicationRecord
  validates :nickname, presence: true
end
