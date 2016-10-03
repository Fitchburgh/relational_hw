require 'active_record'

class Character < ActiveRecord::Base
  validates :name, :character_class, :race, :armor_set, :weapon, presence: true

  attr_accessor :armor_set, :weapon
  attr_reader :id, :name, :character_class, :race

  def initialize
  end

end
