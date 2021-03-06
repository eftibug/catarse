require 'spec_helper'

describe Category do
  it "should be valid from factory" do
    c = Factory(:category)
    c.should be_valid
  end
  it "should have a name" do
    c = Factory.build(:category, :name_pt => nil)
    c.should_not be_valid
  end
  it "should have an unique name" do
    c = Factory(:category, :name_pt => "foo")
    c.should be_valid
    c2 = Factory.build(:category, :name_pt => "foo")
    c2.should_not be_valid
  end
end
