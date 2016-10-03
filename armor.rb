require 'active_record'

#
class ArmorSet < ActiveRecord::Base
  validates :set_name, :head, :body, :hands, :legs, :feet, presence: true

  attr_reader :head, :body, :hands, :legs, :feet
  attr_accessor :set_name

  def initialize
  end
end
