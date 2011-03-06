require 'spec_helper'

describe Creature do
	let(:monster){Factory :monster, :hit_points => 15}
	describe :bloodied? do
		it "should be false when hitpoints are more than half the maximum" do
			creature = Factory :creature, :hit_points => 10, :monster => monster
			creature.should_not be_bloodied
		end
		it "should be true when hitpoints are equal to half the maximum" do
			creature = Factory :creature, :hit_points => 7, :monster => monster
			creature.should be_bloodied
		end
		it "should be true when hitpoints are less than half the maximum" do
			creature = Factory :creature, :hit_points => 2, :monster => monster
			creature.should be_bloodied
		end
	end
	
	describe :take_damage! do
		subject {Factory :creature, :hit_points => 10}
		it "should deduct from hit points" do
			subject.take_damage! 7
			subject.hit_points.should == 3
		end
		it "should not deduct from hit points below zero" do
			subject.take_damage! 13
			subject.hit_points.should == 0
		end
	end
	
	describe :incapacitated? do
		it "should not be incapacitated if hit points are greater than zero" do
			creature = Factory :creature, :hit_points => 1
			creature.should_not be_incapacitated
		end
		it "should be incapacitated if hit points are zero" do
			creature = Factory :creature, :hit_points => 0
			creature.should be_incapacitated
		end
	end
	describe :get_defaults_from_monster do
		subject {Factory :creature, :monster => monster}
		before {subject.get_defaults_from_monster}
		its(:hit_points){should == monster.hit_points}
	end
end