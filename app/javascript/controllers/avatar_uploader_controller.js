import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = [ 'input', 'image' ]

  connect() {
    console.log("hello from avatar-uploader-controller")
    this.reader = new FileReader();
  }

  displayImage() {
    this.reader.onload = (ev) => {
      this.imageTarget.src = ev.currentTarget.result
    }
    this.reader.readAsDataURL(this.inputTarget.files[0])
  }

  openOSWindow() {
    this.inputTarget.click()
  }
}
