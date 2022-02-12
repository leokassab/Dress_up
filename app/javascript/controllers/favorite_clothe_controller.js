import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  favorite(click) {
    const clothId = click.target.dataset.clothId;
    console.log(clothId);
    console.log(this.element);
    console.log(this.element.classList);
    if (this.element.classList.contains('far')) {
      this.element.classList.remove('fas');
      this.element.classList.add('fas');
    } else {
      this.element.classList.remove('far');
      this.element.classList.add('fas');
    }
    fetch(`/clothes/${clothId}/favorite`, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'Content-Type': 'application/json', 'X-CSRF-Token': csrfToken() },
    })
  }
}
