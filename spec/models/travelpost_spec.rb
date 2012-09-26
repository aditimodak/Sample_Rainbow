require 'spec_helper'

describe Travelpost do

    let(:user) { FactoryGirl.create(:user) }

    before { @travelpost = user.travelposts.build(content: "Gotta try the lamb", destination: "Auckland") }


    subject { @travelpost }

    it { should respond_to(:content) }
    it { should respond_to(:destination) }
    it { should respond_to(:user_id) }
    it { should respond_to(:user) }
    its(:user) { should == user }
    it { should be_valid }

    describe "when user_id is not present" do
         before { @travelpost.user_id = nil }
      it { should_not be_valid }
    end
    describe "accessible attributes"  do
    it "should not allow access to user_id"  do
    expect do
      Travelpost.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)

      end
    end
end
