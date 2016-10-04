require 'active_record'
#
class ArmorSet < ActiveRecord::Base
  validates :set_name, presence: true

  belongs_to :armor_pieces
  belongs_to :character

  # :head, :body, :hands, :legs, :feet,
end
