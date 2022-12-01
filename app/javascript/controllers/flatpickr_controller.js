import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
// import { French } from "flatpickr/dist/l10n/fr.js"

const French = require("flatpickr/dist/l10n/fr.js").default.fr;

export default class extends Controller {
  static targets = [ 'DateInput' ]

  connect() {
    flatpickr(this.DateInputTarget, {
      "locale": French,
      "enableTime": true,
      "time_24hr": true,
      "minDate": "today",
      "dateFormat": "j F y, à H:i"
  }) }
}
