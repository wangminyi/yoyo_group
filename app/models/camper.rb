class Camper < ApplicationRecord
  belongs_to :camp
  belongs_to :user
  has_many :messages
end
