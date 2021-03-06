# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  meme_id    :integer          not null
#  liked      :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  validates :user_id, :meme_id, presence: true
  belongs_to :user
  belongs_to :meme
end
