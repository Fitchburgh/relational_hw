require 'active_record'
#
class ArmorPieces < ActiveRecord::Base
  validates :head, :body, :hands, :legs, :feet, presence: true
  belongs_to :character
  belongs_to :armor_set
end
