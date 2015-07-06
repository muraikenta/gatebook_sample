class Note < ActiveRecord::Base
  belongs_to :user
  # likesテーブルとの関係性を定義してください

  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
