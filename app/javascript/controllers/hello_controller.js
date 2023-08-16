import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "modal", "click" ]
  connect() {
   console.log("hello");
    this.clickTarget.addEventListener("click", () => {
      console.log("click");
      this.modalTarget.style.display = "block";


    })
  }
}
