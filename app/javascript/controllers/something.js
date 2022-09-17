import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    input: String
  }

  connect() {


  .on('click', 'div.thirteen button.btn-search', function(event) {
    event.preventDefault();
    var $input = $('div.thirteen input');
    $input.focus();
    if ($input.val().length() > 0) {
      // submit form
    }
  })
;
