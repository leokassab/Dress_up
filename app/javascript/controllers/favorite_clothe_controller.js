import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  favorite(click) {
    const clothId = click.target.dataset.clothId;
    console.log(clothId);
    fetch(`/clothes/${clothId}`, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'Content-type': 'application/json', 'X-CSRF-Token': csrfToken() },
      body: JSON.stringify({ clothe: { bookmark: true } })
    })
    if (this.element.classList.contains('far')) {
      this.element.classList.remove('far');
      this.element.classList.add('fas');
      fetch(`/clothes/${clothId}`, {
        method: 'PATCH',
        headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
        body: JSON.stringify({ clothe: { bookmark: true } })
      })
    } else {
      this.element.classList.remove('fas');
      this.element.classList.add('far');
      fetch(`/clothes/${clothId}`, {
        method: 'PATCH',
        headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
        body: { clothe: { bookmark: false } }
      })
    }
  }
}
