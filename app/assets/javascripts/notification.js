$(document).ready(function(){

  var new_notification_count = function() {

    console.log('fetching new notification count.');
    //$.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') }});

    $.ajax({
      url: '/notifications/total_unread',
      type: 'GET',
      data: {},
      beforeSend: function() {},
      success: function(response) {
        console.log(response);
        $("span#notification-count").text("("+ response.total +")");
      },
      complete: function(e) {
      },
      error: function(xhr) {
        console.log('Failed!');
      }
    });
  };

  new_notification_count();
  var interval = 1000 * 60 * 5; //Each 5 minutes

  setInterval(function () {
    new_notification_count();
  }, interval);

  var pull_unread_notifications = function() {
    console.log('fetching unread notifications.');
  };

});

