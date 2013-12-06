$(function(){
  $('a[rel*=leanModal]').leanModal({ top : 200, closeButton: ".modal_close" });

    var csrf = $('meta[name="csrf-token"]').attr('content');
    $('#crftoken').val(csrf);

  // $('form#vote').submit(function(event){
  //   event.preventDefault();


  //   var form = $(event.target);
  //   var data = $(form).serialize();
  //   var url = $(form).attr('action');

  //   $.post( url, function(data){})
  //     .done(function(data){
  //       alert(data);
  //     })
  //     .fail(function(data){
  //       alert(data);
  //     });
  // });
});

