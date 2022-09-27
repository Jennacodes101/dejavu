import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["btn", "cards"]

  connect() {
    console.log(this.element)
    console.log(this.btnTarget)
    console.log(this.cardsTarget)
    console.log("hello")
  }
}
