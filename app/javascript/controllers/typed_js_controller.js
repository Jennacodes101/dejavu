import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Never forget what you want to experience.", "Know the world through your friends' eyes."],
      typeSpeed: 60,
      loop: true
    });
  }
}
