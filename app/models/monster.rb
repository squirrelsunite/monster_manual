class Monster < ActiveRecord::Base
  validates :strength, :dexterity, :constitution, :wisdom, :intelligence, :charisma, :hit_points, :armor_class, :fortitude, :reflex, :will, :numericality => true, :presence => true
  validates :name, :presence => true
  def bloodied
    hit_points / 2
  end
end