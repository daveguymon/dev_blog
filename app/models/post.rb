class Post < ApplicationRecord
    class << self
        def markdown
            Redcarpet::Markdown.new(Redcarpet::Render::HTML)
        end
    end
    validates :title, :content, presence: true
end
