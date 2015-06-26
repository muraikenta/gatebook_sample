class Note < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  # user_idに対するバリデーションを設定してください
  
end
