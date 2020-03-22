require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:all) do
    @post = create(:post)
  end

  it "is valid with valid attributes" do
    expect(@post).to be_valid
  end
  
  
  
  # describe 'creation' do
  #   it 'can be created' do
  #     post = Post.create(:title => "test title", :content => "test content")

  #     expect(post).to be_valid
  #   end
  # end
end
