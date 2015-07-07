class Note < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  # Noteとliking_usersの関係を定義してください
  

  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
