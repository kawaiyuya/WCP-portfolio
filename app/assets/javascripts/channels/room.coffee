document.addEventListener 'turbolinks:load', ->
	App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id:$('#comment').data('room_id'), user_id: $('#comment').data('user_id') },
		connected: ->
			# Called when the subscription is ready for use on the server
			console.log('connected');

		disconnected: ->
			# Called when the subscription has been terminated by the server


		received: (chat_data) ->
			your_id = $('#comment').data('your_id')
			user_id = $('#comment').data('user_id')
			image_src = $('#user_image').attr('src')
			console.log(image_src)
			console.log(chat_data['comment'])
			# if chat_data['id'] != user_id
			box = $('<div>').addClass('room-user-text-box')
			# 変数boxの中に新しく作ったclass='room-user-box'を持ったdivタグを入れる。
			text = $('<div>').addClass('room-user-text')
			text2= $('<div>').addClass('user-text-text')
			text3= $('<div>').addClass('user-comment')
			text4= $('<div>').addClass('user-image')
			p = $('<p>').text(chat_data['comment']).addClass('comment')
			img = $('<img src=' + image_src + '>').addClass('user-image')

			text4.append(img)
			text2.append(text4)
			text.append(text2)
			box.append(text)
			$('#user_profile_image').append(box)

			text3.append(p)
			text2.append(text3)
			text.append(text2)
			box.append(text)
			$('#comment-box').prepend(box)



			# Called when there's incoming data on the websocket for this channel

		speak: (_comment, _room_id, _user_id) ->
			@perform 'speak', comment: _comment, room_id: _room_id, user_id: _user_id

		$(document).on 'click', '#chat_btn', (e) ->
			room_id = $('#comment').data('room_id')
			user_id = $('#comment').data('user_id')
			comment = $("#chat_message").val()
			# vlueでinputやテキストエリアに入力した文字を取得することができる。
			App.room.speak(comment, room_id, user_id)
			$("#chat_message").val('')
			# テキストエリアの中身を空にする記述。
			e.preventDefault()
			# フォームの更新を止める記述
