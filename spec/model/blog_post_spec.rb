require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  it { should have_many(:feedbacks).dependent(:destroy) }

  it { should validate_presence_of(:author_name) }
  it { should validate_presence_of(:author_email) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }

  it { should allow_value("test@example.com").for(:author_email) }
end
