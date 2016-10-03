require_relative 'environment'
require_relative 'character'
require_relative 'armor_set'
require_relative 'armor_pieces'
require 'pry'


# def name_to_update
#   p 'Which character would you like to update: '
#   char_to_update = gets.chomp.capitalize
#   if char_to_update
# end
#
# def item_to_update
#   p "What would you like to update on #{char_to_update}: "
#   stat_to_update = gets.chomp.downcase
# end



def main
  ArmorSet.joins(:head, :body, :hands, :legs, :feet, :set_name)
  p ArmorSet.all


  char_to_update = gets.chomp.capitalize
  binding.pry
  # p Character.all
  # p Character.first.armor_set
  # p ArmorSet.where(set_name: Character.first.armor_set)
  # p Character.where(name: 'Bhakti')
  # p Character.find_by(name: 'Bhakti').character_class
  # p ArmorSet.where(id: 1).first.set_name
  #  p ArmorPieces.where(id: 1).first.head
  p ArmorPieces.where(set_name: Character.where(name: "Top").first.set_name).first.head
end

main if __FILE__ == $PROGRAM_NAME


#autogem for seeds "faker"
