require_relative 'environment'
#
class CreateCharactersTable < ActiveRecord::Migration[5.0]
  def up
    puts 'Initializing character table...'

    create_table :characters do |t|
      t.string :name
      t.string :character_class
      t.string :race
      t.string :set_name
      t.string :weapon
      t.timestamps
    end

    puts 'Character table initialized'
  end

  def down
    puts 'Deleting character table'
    drop_table :characters
    puts 'Character table deleted'
  end
end

#
class CreateArmorSetTable < ActiveRecord::Migration[5.0]
  def up
    puts 'Setting up armor set table'
    create_table :armor_sets do |t|
      t.string :set_name
      t.timestamps
    end
  end
end

#
class CreateArmorPiecesTable < ActiveRecord::Migration[5.0]
  def up
    puts 'Initializing armor pieces...'
    create_table :armor_pieces do |t|
      t.string :head
      t.string :body
      t.string :hands
      t.string :feet
      t.string :legs
      t.string :set_name
      t.timestamps
    end
    puts 'Armor ready'
  end

  def down
    puts 'Scrapping armory...'
    drop_table :armor_pieces
    puts 'Armory scrapped.'
  end
end

def main
  up_or_down = (ARGV[0] || :up).to_sym
  CreateCharactersTable.migrate(up_or_down)

  up_or_down = (ARGV[1] || :up).to_sym
  CreateArmorSetTable.migrate(up_or_down)

  up_or_down = (ARGV[2] || :up).to_sym
  CreateArmorPiecesTable.migrate(up_or_down)
end

main if __FILE__ == $PROGRAM_NAME
