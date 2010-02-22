require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Account do
  before(:each) do
    @valid_attributes = {
      :name => "MyString",
      :opening_balance => "9.99",
      :opening_date => "2010-02-12 21:23:04",
      :type => "Asset",
      :balance => "9.99"
    }
  end

  it "should create a new instance given valid attributes" do
    Asset.create!(@valid_attributes)
  end
end
