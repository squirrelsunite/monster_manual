class ChangeEnountersToEncounters < ActiveRecord::Migration
  def self.up
     change_table :races do |t|
       t.remove :enounters
       t.text :encounters
     end
   end
   def self.down
     change_table :races do |t|
       t.remove :encounters
       t.text :enounters
     end
   end
end
