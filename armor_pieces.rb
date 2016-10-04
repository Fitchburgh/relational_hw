require 'active_record'
#
class ArmorPieces < ActiveRecord::Base
  validates :head, :body, :hands, :legs, :feet, presence: true
  has_many :armor_sets
  has_many :characters, :through => :armor_set
end
