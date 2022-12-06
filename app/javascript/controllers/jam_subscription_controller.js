import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"
import * as bootstrap from "bootstrap"

// Connects to data-controller="jam-subscription"
export default class extends Controller {
  static values = { jamId: Number, userId: Number}
  static targets = ["posts", "form", "modal"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "JamChannel", id: this.jamIdValue },
      { received: (data) => {
        console.log(data)
          if (data.post) {
            this.postsTarget.insertAdjacentHTML("afterbegin", data.post)
            if (this.userIdValue == data.user_id) {
              var myModal = bootstrap.Modal.getOrCreateInstance(this.modalTarget);
              myModal.hide();
            }
          } else if (data.form_error && this.userIdValue == data.user_id) {
            this.formTarget.innerHTML = data.form_error
          }
        }
      }
    )
  }


  resetForm(event) {
    event.target.reset()
  }

  closeForm(event) {
    event.target.reset()
  }
}
