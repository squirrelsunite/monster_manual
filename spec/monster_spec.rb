require "spec_helper"

describe Monster do
  before do
    @monster = Factory(:monster)
  end
  describe "keywords" do
    before do
      %w(foo bar baz).each do |name|
        keyword = Keyword.create! :name => name
        @monster.keywords << keyword
      end
      @monster.save!
      @monster.reload
    end
    it "should have many" do
      @monster.keywords.should have(3).items
      names = @monster.keywords.map &:name
      names.should include("foo")
      names.should include("baz")
      names.should include("bar")
    end
    it "should be reflexive" do
      Keyword.first.monsters.should have(1).item
      Keyword.first.monsters.first.should == @monster
    end
  end
	describe "modifier" do
		before do
			@monster.level = 3
			@monster.strength = 15
			@monster.dexterity = 11
			@monster.intelligence = 6
		end
		specify { @monster.modifier(:strength).should == 3}
		specify { @monster.modifier(:dexterity).should == 1}
		specify { @monster.modifier(:intelligence).should == -1}
	end
	describe "skills" do
		before do
			@monster.skills << Skill.new(:name => :stealth, :score => 7)
			@monster.update_skills :nature => 5
			@monster.save!
		end
		specify { @monster.skill(:stealth).score.should == 7 }
		specify { @monster.skill(:nature).score.should == 5 }
		specify { @monster.skill(:religion).should be_nil }
	end
end

