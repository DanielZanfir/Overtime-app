require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
      user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name:"Dani" , last_name:"Zanfir")
      @post = Post.create(date: Date.today , rationale: "Anything", user_id: user.id)
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
