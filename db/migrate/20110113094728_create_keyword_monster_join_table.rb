class CreateKeywordMonsterJoinTable < ActiveRecord::Migration
  def self.up
    create_table :keywords_monsters, :id => false do |t|
      t.references :keyword, :monster
    end
  end

  def self.down
    drop_table :keywords_monsters
  end
end
