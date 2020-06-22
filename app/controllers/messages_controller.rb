class MessagesController < ApplicationController
  def index
    # @messages = Message.all
    # ↑の表記だとDB処理(view/messages/index.html.erb内messages.user.name)(message投稿時userテーブルから検索する動作が起こり処理負担が増えてしまう)
    # SQLの結合(JOIN)という概念を利用
    @messages = Message.includes(:user)
  end

  def new
    @message = Message.new
    @users = User.all
  end

  def create
    Message.create!(message_params)
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :content)
  end
end
