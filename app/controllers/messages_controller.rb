class MessagesController < ApplicationController
  def index
    # @messages = Message.all
    # ↑の表記だとDB処理(view/messages/index.html.erb内messages.user.name)(message投稿時userテーブルから検索する動作が起こり処理負担が増えてしまう)
    # SQLの結合(JOIN)という概念を利用
    @messages = Message.includes(:user)
  end

  def new
  end

  def create
  end
end
