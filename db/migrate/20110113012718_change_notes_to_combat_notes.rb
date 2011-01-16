class ChangeNotesToCombatNotes < ActiveRecord::Migration
  def self.up
     change_table :monsters do |t|
       t.remove :notes
       t.text :combat_notes
     end
   end
   def self.down
     change_table :monsters do |t|
       t.remove :combat_notes
       t.text :notes
     end
   end
end
