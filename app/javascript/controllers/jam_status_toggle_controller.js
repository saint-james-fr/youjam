import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="jam-status-toggle"
export default class extends Controller {

  static targets = ["tabButton","pendingBody", "acceptedBody", "declinedBody"]
  connect() {
    const pending = document.getElementById("pending");
    pending.style.fontWeight="1000";
    pending.style.color = "#3912A7";//$primary

  }

  displayToggle(e) {
    const pending = document.getElementById("pending");
    const accepted = document.getElementById("accepted");
    const declined = document.getElementById("declined");
    const button = e.currentTarget;
    const buttons = this.tabButtonTargets
    const pendingBody = this.pendingBodyTarget;
    const acceptedBody = this.acceptedBodyTarget;
    const declinedBody = this.declinedBodyTarget;
    const bodies = [pendingBody, acceptedBody, declinedBody]
    // * styling tabs *
    buttons.forEach(element => {
      element.style.fontWeight = "initial";
      element.style.color = "#0E0526"; // $darkerblue
    });
    button.style.fontWeight = "1000";
    button.style.color = "#3912A7"; //$primary
    // * changing bodies *
    bodies.forEach(element => element.classList.remove("d-none"));
    if (button == pending) {
      acceptedBody.classList.add("d-none");
      declinedBody.classList.add("d-none");
    }
    if (button == accepted) {
      pendingBody.classList.add("d-none");
      declinedBody.classList.add("d-none");
    }
    if (button == declined) {
      acceptedBody.classList.add("d-none");
      pendingBody.classList.add("d-none");
    }
  }
}
