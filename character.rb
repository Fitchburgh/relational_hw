require 'active_record'
#
class Character < ActiveRecord::Base
  validates :name, :character_class, :race, :set_name, :weapon, presence: true
  has_many :armor_sets
  has_many :armor_pieces, :through => :armor_sets
end
