Factory.define :creature do |creature|
	creature.hit_points rand(20)
	creature.name "Jeff"
	creature.initiative rand(10)
	creature.association :monster
end