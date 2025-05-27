class FeedbacksController < ApplicationController
  def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    @feedback = @blog_post.feedbacks.build(feedback_params)

    if @feedback.save
      redirect_to @blog_post, notice: "Feedback sent to the author!"
    else
      render "blog_posts/show", status: :unprocessable_entity
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :message)
  end
end
