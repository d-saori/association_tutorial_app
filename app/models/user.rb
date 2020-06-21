class User < ApplicationRecord
  # user has many messages
  # ユーザーはたくさんのメッセージを持っている
  has_many :messages
end
