require "rails_helper"

RSpec.describe FeedbackMailer, type: :mailer do
  describe "send_feedback" do
    let(:feedback) { create(:feedback) }
    let(:mail) { FeedbackMailer.send_feedback(feedback) }

    it "sends to the blog post author's email" do
      expect(mail.to).to eq([ feedback.blog_post.author_email ])
    end

    it "includes the feedback message" do
      expect(mail.body.encoded).to include(feedback.message)
    end

    it "has the correct subject" do
      expect(mail.subject).to eq("New feedback on your blog post: #{feedback.blog_post.title}")
    end
  end
end
