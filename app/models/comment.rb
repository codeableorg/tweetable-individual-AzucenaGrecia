class Comment < ApplicationRecord
  belongs_to :tweet, counter_cache: true
  validates :body, presence: true, length: { in: 1..140 }
end

# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tweet_id   :bigint           not null
#
# Indexes
#
#  index_comments_on_tweet_id  (tweet_id)
#
# Foreign Keys
#
#  fk_rails_...  (tweet_id => tweets.id)
#
