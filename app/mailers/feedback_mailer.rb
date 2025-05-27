class FeedbackMailer < ApplicationMailer
  def send_feedback(feedback)
    @feedback = feedback
    mail(
      to: feedback.blog_post.author_email,
      subject: "New feedback on your blog post: #{feedback.blog_post.title}"
    )
  end
end
