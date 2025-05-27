json.extract! blog_post, :id, :author_name, :author_email, :title, :content, :created_at, :updated_at
json.url blog_post_url(blog_post, format: :json)
