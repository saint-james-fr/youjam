import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ 'DateInput' ]

  connect() {
    flatpickr(this.DateInputTarget)
  }
}
