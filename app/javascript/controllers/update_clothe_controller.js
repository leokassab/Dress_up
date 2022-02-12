import { Controller} from "stimulus";

export default class extends Controller {
  static targets = ['form', 'infos', 'card'];

  displayForm() {
    this.formTarget.classList.toggle('d-none');
    this.infosTarget.classList.toggle('d-none');
  }

  update(event) {
    event.preventDefault();
    const url = this.formTarget.action
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
