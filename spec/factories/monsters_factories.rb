Factory.define :monster do |monster|
  monster.name 'Factory Girl'
  monster.strength rand(20)
  monster.dexterity rand(20)
  monster.constitution rand(20)
  monster.intelligence rand(20)
  monster.charisma rand(20)
  monster.wisdom rand(20)
  monster.hit_points rand(20)
  monster.armor_class rand(20)
  monster.will rand(20)
  monster.reflex rand(20)
  monster.fortitude rand(20)
  monster.level rand(20)
  monster.initiative rand(20)
end