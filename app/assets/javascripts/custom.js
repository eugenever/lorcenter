//кнопка вверх
$(function() { 
  $.fn.scrollToTop = function() { 
    
    $(this).hide().removeAttr("href"); if ($(window).scrollTop() != "0") { 
      $(this).fadeIn("slow")
    }
    
    var scrollDiv = $(this); $(window).scroll(function() {
      if ($(window).scrollTop() == "0") { $(scrollDiv).fadeOut("slow") }
      else { $(scrollDiv).fadeIn("slow") }
    });

    $(this).click(function() { $("html, body").animate({ scrollTop: 0 }, "slow") })
  }
});

$(function() { $("#w2b-StoTop").scrollToTop(); });

//прокрутка вверх при открытии страницы
$(function() {
  $('body').animate({'scrollTop':'0px'});
});

$(window).resize(function() {    
  //изменяем отступ body при расширении навбара
  var navbar_height = $('#nbheader').height();
  $('body').css('padding-top', navbar_height + 'px');

  var contactLayer_width = $("#contactLayer").width();
  if (contactLayer_width < 830) {
    var map_width = 830*(contactLayer_width/830)
    var map_height = 650*(contactLayer_width/830)
    var margin_left = 7*(contactLayer_width/830)
    $("#centerLayer").css("width" , map_width + "px").css("height" , map_height + "px");
    $("#centerLayer1").css("width" , map_width + "px").css("height" , map_height + "px");     
  } else {
    $("#centerLayer").css("width" , "720px").css("height" , "450px");
    $("#centerLayer1").css("width" , "720px").css("height" , "450px");
  }

});


$(document).ready(function() {    
  //изменяем отступ body при расширении навбара
  var navbar_height = $('#nbheader').height();
  $('body').css('padding-top', navbar_height + 'px');

  var contactLayer_width = $("#contactLayer").width();
  if (contactLayer_width < 830) {
    var map_width = 830*(contactLayer_width/830)
    var map_height = 650*(contactLayer_width/830)
    var margin_left = 7*(contactLayer_width/830)
    $("#centerLayer").css("width" , map_width + "px").css("height" , map_height + "px");      
    $("#centerLayer1").css("width" , map_width + "px").css("height" , map_height + "px");
  } else {
    $("#centerLayer").css("width" , "720px").css("height" , "450px"); 
    $("#centerLayer1").css("width" , "720px").css("height" , "450px");
  }
});





