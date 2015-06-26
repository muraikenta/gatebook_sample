class User < ActiveRecord::Base
  # has_manyを用いて「ひとりのuserは複数のnoteを持つ」という関係性を設定してください

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
