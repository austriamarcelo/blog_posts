FactoryBot.define do
  factory :feedback do
    blog_post
    name { "Jane Reader" }
    email { "jane@example.com" }
    message { "Great post!" }
  end
end
