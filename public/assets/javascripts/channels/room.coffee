document.addEventListener 'turbolinks:load', ->
	App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id:$('#comment').data('room_id'), user_id: $('#comment').data('user_id') },
		connected: ->
			# Called when the subscription is ready for use on the server
			console.log('connected');

		disconnected: ->
			# Called when the subscription has been terminated by the server


		received: (data) ->
			$('#comment').append data['comment']
			# Called when there's incoming data on the websocket for this channel

		speak: (_comment, _room_id) ->
			@perform 'speak', comment: _comment, room_id: _room_id

		$(document).on 'click', '#chat_btn', (e) ->
			id = $('#comment').data('room_id')
			comment = $("#chat_message").val()
			# vlueでinputやテキストエリアに入力した文字を取得することができる。
			App.room.speak(comment,id)
			$("#chat_message").val('')
			# テキストエリアの中身を空にする記述。
			e.preventDefault()
			# フォームの更新を止める記述