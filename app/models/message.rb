class Message < ApplicationRecord
  belongs_to :camper
  belongs_to :camp
  belongs_to :topic, optional: true
end
