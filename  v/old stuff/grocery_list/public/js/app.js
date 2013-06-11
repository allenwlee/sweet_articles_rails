/* 
 * What are the objects in this exercise?
 * What are their properties and methods?
 * How do your objects interact with their respective DOM elements?
 */

$(document).ready(function() {
  $(".item").draggable({helper: "clone"});
  $("#grocery_list").droppable({accept: ".item", drop: add_item});
});

function add_item(e, ui) {
  if (listed(ui.draggable)) {
    increment_item(ui.draggable);
  } else {
    $("#grocery_list tbody").append(ui.draggable.clone());
  }
  update_price();
}

function update_price() {
  var total = 0;
  $("#grocery_list .item .item_price").each(function(key, item) {
    total += parseFloat($(item).text(), 10);
  });
  $("#total_cost").text(format_price(total));
}

function format_price(amt) {
  text_amt = amt.toString() + "00";
  return text_amt.match(/.*\..{0,2}/);
}

function listed(item) {
  var bool = false;
  $("#grocery_list .item .item_name").each(function(key, name) {
    if (item.find(".item_name").text() == $(name).text()) {
      bool = true;
    }
  });
  return bool;
}

function increment_item(item) {
  $("#grocery_list .item .item_name").each(function(key, name) {
    if (item.find(".item_name").text() == $(name).text()) {
      var price = add_text_prices($(name).parent(".item").find(".item_price").text(), item.find(".item_price").text());
      $(name).parent(".item").find(".item_price").text(price);
    }
  });
}

function add_text_prices(price_a, price_b) {
  var price = parseFloat(price_a, 10) + parseFloat(price_b, 10);
  return format_price(price);
}
