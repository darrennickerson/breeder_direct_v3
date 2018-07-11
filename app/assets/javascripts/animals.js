


$(document).on('turbolinks:load', function() {
  var maxField = 10;
  var addButton = $('.add_trait');
  var wrapper = $('#trait_wrapper');
  var fieldHtml = '<div><input multiple="multiple" type="text" name="animal[traits][]" value=""/><a href="javascript:void(0);" id="animal_traits" class="remove_button"><i class="fas fa-times-circle"></i></a></div>';


  var x = 1;

  $(addButton).click(function(){
    if(x < maxField){
      x++
      $(wrapper).append(fieldHtml);
    }
  });
})
