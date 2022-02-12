import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  favorite(click) {
    const clothId = click.target.dataset.clothId;
    // console.log(clothId);
    console.log(this.element);
    console.log(this.element.classList);
    console.log(this.heartTarget);
    const heart = this.element.querySelector("i");
    if (heart.classList.contains('far')) {
      heart.classList.remove('far');
      heart.classList.add('fas');
    } else {
      heart.classList.remove('fas');
      heart.classList.add('far');
    }
    fetch(`/clothes/${clothId}/favorite`, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'Content-Type': 'application/json', 'X-CSRF-Token': csrfToken() },
    })
  }
}
