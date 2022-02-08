import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'card'];

  displayForm() {
    this.formTarget.classList.toggle('d-none');
  }

  update(event) {
    console.log(event)
    event.preventDefault();
    const url = this.formTarget.action
    console.log("hello") //
    console.log(new FormData(this.formTarget))
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': 'text/plain' },
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then((data) => {
      this.cardTarget.outerHTML = data;
    })
  }
}
