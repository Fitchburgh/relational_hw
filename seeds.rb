require_relative 'environment'
require_relative 'character'
require_relative 'armor_set'
require_relative 'armor_pieces'

def main
  paper_set = ArmorPieces.create(
    head: 'Paper Helm',
    body: 'Paper Carapace',
    hands: 'Paper Gloves',
    legs: 'Paper Guards',
    feet: 'Paper Boots',
    set_name: "Paper Set"
  )

  death_armor = ArmorPieces.create(
    head: 'Death Helm',
    body: 'Death Harness',
    hands: 'Death Gloves',
    legs: 'Death Guards',
    feet: 'Death Boots',
    set_name: "Death Toll"
  )
  p 'armor create'

  taco = Character.create(
    name: 'Taco',
    character_class: 'Warrior',
    race: 'Orc',
    set_name: 'Paper Set',
    weapon: 'Blade'
  )

  fitch = Character.create(
    name: 'Fitch',
    character_class: 'Assassin',
    race: 'Undead',
    set_name: 'Death Toll',
    weapon: 'Hammer'
  )

  top = Character.create(
    name: 'Top',
    character_class: 'Hunter',
    race: 'Human',
    set_name: 'Death Toll',
    weapon: 'Hammer'
  )

  bhakti = Character.create(
    name: 'Bhakti',
    character_class: 'Hunter',
    race: 'Human',
    set_name: 'Death Toll',
    weapon: 'Hammer'
  )
  p 'Char create'
  p bhakti
  # death_toll = ArmorSet.create(
  # set_name: 'Death Toll'
  # )
  #
  # paper_set = ArmorSet.create(
  # set_name: 'Paper Set'
  # )
  # gandalf = Character.new
  # gandalf.name = 'Gandalf'
  # gandalf.character_class = 'Grey Wizard'
  #
  # print 'Gandalf is valid? '
  # p gandalf.valid?
  #
  # print 'Gandalf validate: '
  # p gandalf.validate
  #
  # print 'Gandalf before save: '
  # p gandalf
  #
  # print 'Saved? '
  # p gandalf.save
  #
  # print 'Gandalf after save: '
  # p gandalf
  #
  # frodo = Character.create(
  #   name: 'Frodo Baggins',
  #   character_class: 'Ringbearer'
  # )
  #
  # print 'Frodo after create: '
  # p frodo
  #
  # sarumon = Character.create(
  #   name: 'Sarumon',
  #   character_class: 'Lord of Isengard'
  # )
  #
  # print 'Sarumon after create: '
  # p sarumon
end

main if __FILE__ == $PROGRAM_NAME
