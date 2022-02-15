import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'infos'];

  displayForm() {
    console.log("hello")
    this.formTarget.classList.toggle('d-none');
    this.infosTarget.classList.toggle('d-none');
  }
}
