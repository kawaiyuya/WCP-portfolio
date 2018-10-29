class RoomChannel < ApplicationCable::Channel
  def subscribed
  	stream_from "room_channel_#{params["room_id"]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	puts data['comment']
  	puts data['room_id']
  	puts data['user_id']
    #ここでユーザー画像のパスを取得
    user = User.where(id: data['user_id'])
    # idがdataの引数で渡ってきたuser_idを一緒なものを探している
    # image_path = Refile.attachment_url(user,:profile_image)
   

 	  comment = Comment.new(comment: data['comment'], room_id: data['room_id'], user_id:params['user_id'])
 	  comment.save
 	  puts comment.errors.full_messages
  	ActionCable.server.broadcast "room_channel_#{params['room_id']}", comment: data['comment'], room_id: data['room_id'] #ここで画像のパスを一緒に渡してあげる。

  end
end
