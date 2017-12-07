class Camp < ApplicationRecord
  has_many :campers, -> { where.not(joined_at: nil) }
  has_many :messages
  has_and_belongs_to_many :tags
end
