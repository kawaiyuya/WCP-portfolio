
//Skipprの初期化
$("document").ready(function() {
    $(".theTarget").skippr();
});

    $(".theTarget").skippr({
        // スライドショーの変化 ("fade" or "slide")
        transition : 'fade',
        // 変化に係る時間(ミリ秒)
        speed : 1000,
        // easingの種類
        easing : 'easeOutQuart',
        // ナビゲーションの形("block" or "bubble")
        navType : 'block',
        // 子要素の種類("div" or "img")
        childrenElementType : 'div',
        // ナビゲーション矢印の表示(trueで表示)
        arrows : true,
        // スライドショーの自動再生(falseで自動再生なし)
        autoPlay : false,
        // 自動再生時のスライド切替間隔(ミリ秒)
        autoPlayDuration : 5000,
        // キーボードの矢印キーによるスライド送りの設定(trueで有効)
        keyboardOnAlways : true,
        // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
        hidePrevious : false,
    });


// タブメニュー

// $(function(){
//     // alert('hei!')
//     $(document).on("ajax:success", ".genre", function(e) {
//          $('#show').html('<%= j(render "searchs/show", categorys: @categorys) %>');
//          $(this).slideDown();
//     });
// });

// 



// 画像スライド用の記述

// $(function() {
// 	$("span").click(function() {
// 		var $slide = $('.active');
// 		var slide_count = $('.slide').length;
// 		var this_count = $('.slide').index($('.active'));
// 		// スライドの数
// 		$('.active').hide();
// 		$('.active').removeClass('active');
// 		if ($(this).hasClass('less_than')) {
// 			if (this_count == 0) {
// 				$('.slide:last-child').fadeIn();
// 				$('.slide:last-child').addClass('active');
// 			} else {
// 				$slide.prev().fadeIn();
// 				$slide.prev().addClass('active');
// 			}
// 		} else {
// 			if (this_count == (slide_count-1)) {
// 				$('.slide:first-child').fadeIn();
// 				$('.slide:first-child').addClass('active');
// 			} else{
// 				$slide.next().fadeIn();
// 				$slide.next().addClass('active');
// 			}
// 		}
// 	})

// 	setInterval(function(){
// 		var count = $('.slide').index($('.active'));
// 	},2000);


// 	$(document).on('click', '.header_list span', function() {
// 		var id = $(this).data('href');
// 		var position = ($(id).offset().top - 50);
// 		$('html,body').animate({
//       'scrollTop': position
//     }, 'slow');
// 	})

// 	$(window).scroll(function() {
// 		if ($(this).scrollTop() > 476) {
// 			$('#page_arrow').fadeIn();
// 		} else {
// 			$('#page_arrow').fadeOut();
// 		}
//   });

//   $(document).on('click', '#page_arrow, #header_logo', function() {
//   	$('html,body').animate({
//       'scrollTop': 0
//     }, 'slow');
//   })

// })


 // ジャンル・アメニティー追加のモーダル関係
$(function() {
  var open = document.getElementById('open');
  var close = document.getElementById('close');
  var modal = document.getElementById('modal');
  var mask = document.getElementById('mask');
    ('#open').click
    open.addEventListener('click', function() {
    modal.className = '';
    mask.className = '';
  });
$(function(){
    $('#open').click(function(){
        $('#modal').removeClass('hidden');
        $('#mask').removeClass('hidden');
    });
    $('#close').click(function(){
        $('#modal').addClass('hidden');
        $('#mask').addClass('hidden');
    });

});


// いいね非同期



