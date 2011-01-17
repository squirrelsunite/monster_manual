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
end
