class BlogPost < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  validates :author_name, :author_email, :title, :content, presence: true
  validates :author_email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
