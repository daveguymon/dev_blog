class Post < ApplicationRecord
    class << self
        def markdown
            Redcarpet::Markdown.new(Redcarpet::Render::HTML)
        end
    end
    validates :title, :content, presence: true

    def self.search(search)
        if search
            Post.where('lower(title) LIKE lower(:search)', search: "%#{search}%")
        else
            Post.all
        end
    end
end
