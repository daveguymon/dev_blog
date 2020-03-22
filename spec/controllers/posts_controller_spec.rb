require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe 'create' do
        it 'successfully creates a new post' do
            post = Post.create(:title => "test title", :content => "test content")

            expect(post.title).to eq("test title")
        end
    end
end
