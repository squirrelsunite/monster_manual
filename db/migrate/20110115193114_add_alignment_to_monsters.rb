class AddAlignmentToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :alignment, :string
  end

  def self.down
    remove_column :monsters, :alignment
  end
end
