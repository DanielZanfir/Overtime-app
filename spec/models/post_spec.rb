require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
      @user = FactoryBot.build_stubbed(:user)
      @post = FactoryBot.create(:post)
    end
    it "can be created" do
      expect(@post).to be_valid
    end

    it "can not be created without a date or a rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
