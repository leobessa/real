require 'spec_helper'

describe Account do

  Account.types.each do |subclass|
    context "as #{subclass}" do
      it "should let parent account be nil" do
        a = Factory.build subclass.to_s.underscore.to_sym
        a.parent = nil
        a.should be_valid
      end
    end
  end
  
end
