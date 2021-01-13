class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
end

# == Schema Information
#
# Table name: tweets
#
#  id             :bigint           not null, primary key
#  body           :text             not null
#  comments_count :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_tweets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
