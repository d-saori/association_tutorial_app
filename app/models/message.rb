class Message < ApplicationRecord
  # Message belongs to a user
  # メッセージはある一人のユーザーに属する
  belongs_to :user
end
