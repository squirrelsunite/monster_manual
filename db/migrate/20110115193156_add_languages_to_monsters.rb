class AddLanguagesToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :languages, :string
  end

  def self.down
    remove_column :monsters, :languages
  end
end
