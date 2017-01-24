$(document).ready(function(){
    $('body').on('click', '.fakeButton', function(){
        console.log("clicked fake button");
        var $element = $(this);
        $.post('/tweet', {status: $element.attr('status')})
          .done(function(data) {
            if (data.err) {
                console.log("errored");
                $element.addClass('errored');
            }else{
                console.log("tweeted");
                $element.addClass('tweeted');
            }
          })
          .fail(function(err){
            console.error(err);
          });
      });
});
