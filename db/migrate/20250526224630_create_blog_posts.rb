class CreateBlogPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_posts do |t|
      t.string :author_name
      t.string :author_email
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
