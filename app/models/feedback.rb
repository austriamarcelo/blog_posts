class Feedback < ApplicationRecord
  belongs_to :blog_post

  after_create :send_email_to_author

  validates :name, :email, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  def send_email_to_author
    FeedbackMailer.send_feedback(self).deliver_now
  end
end
