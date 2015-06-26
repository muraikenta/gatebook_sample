class Note < ActiveRecord::Base
  # belongs_toを用いて「それぞれのnoteはuserに属している」という関係性を設定してください
  
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
