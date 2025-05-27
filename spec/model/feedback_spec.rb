require 'rails_helper'

RSpec.describe Feedback, type: :model do
  it { should belong_to(:blog_post) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:message) }

  it { should allow_value("reader@example.com").for(:email) }

  describe "#send_email_to_author" do
    let(:feedback) { build(:feedback) }

    it "sends an email after creation" do
      expect {
        feedback.save
      }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
