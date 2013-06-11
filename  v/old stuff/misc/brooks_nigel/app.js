$(document).ready(function(){
  var counter = 0;
  $('.item').draggable({
    helper: "clone"
  });

  $('#grocery_list').droppable({
    accept: '.item',
    drop: function(event, ui) {
      $(this).append(ui.draggable.clone());
      var price = ui.draggable.children('.item_price').html();
      counter = parseFloat(price) + counter;
      $('#total_cost').html(counter.toFixed(2));
    }
  });
});
