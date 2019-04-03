$(function() {
  $todoItemLink = $('.todo-item__link');

  $todoItemLink.on('click', function(e) {
    e.preventDefault();
    $('tbody').append('<input type="text" placeholder="Add Item" />')
  })
});
