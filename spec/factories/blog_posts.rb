FactoryBot.define do
  factory :blog_post do
    author_name { "John Doe" }
    author_email { "john@example.com" }
    title { "Sample Blog Post" }
    content { "This is the content of the blog post." }
  end
end
