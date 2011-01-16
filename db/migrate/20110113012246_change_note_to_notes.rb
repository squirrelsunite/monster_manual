class ChangeNoteToNotes < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.remove :note
      t.text :notes
    end
  end
  def self.down
    change_table :monsters do |t|
      t.remove :notes
      t.text :note
    end
  end
end
