import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'input', 'list', 'filters', 'searchbar', 'cross', 'avatar'];

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }

  displayFilters() {
    console.log("coucou")
    this.filtersTarget.classList.toggle('d-none');
    this.crossTarget.classList.toggle('d-none')
    if (this.hasSearchbarTarget) {
      this.searchbarTarget.classList.toggle("d-none");
    }
    if (this.hasListTarget) {
      this.listTarget.classList.toggle('d-none');
    }
    if (this.hasAvatarTarget) {
      this.avatarTargets.forEach(avatar => avatar.classList.toggle('d-none') );
    }
  }
}
