require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "from creation of new comment"

    it "should have a name and a comment" do
      comment = Comment.new
      comment.commenter = "Johnathan"
      comment.body = "Sweet test, bro!"
      expect(comment.commenter).to eq "Johnathan"
      expect(comment.body).to eq "Sweet test, bro!"
    end

end
