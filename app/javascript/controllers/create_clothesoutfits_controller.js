import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form', 'head', 'chest', 'leg', 'foot'];

  send(event) {
    event.preventDefault();
    const ids = {}
    // Récupère le nom de l'outfit
    ids["name"]  = this.formTarget.outfit_name.value;

    // Donne le head affiché à l'écran

      this.headTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          ids["head_id"] = div.id;
        }
      });


    // Donne le chest affiché à l'écran
    this.chestTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        ids["chest_id"] = div.id;
      }
    });

    // Donne le leg affiché à l'écran
    this.legTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        ids["leg_id"] = div.id;
      }
    });

    // Donne le foot affiché à l'écran
    this.footTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        ids["foot_id"] = div.id;
      }
    });





    // envoi des 5 données à l'outfits controller
    const url = "outfits";

    fetch(url, {
      method: 'POST',
      headers: { "Content-Type": "application/json",  "X-CSRF-Token": csrfToken()},
      body: JSON.stringify({"outfit": ids })
     })
      .then(response => {
        if (response.redirected) {
          window.location.href = response.url;
        }
      })
  }

  displayForm() {
    this.formTarget.classList.toggle('d-none');
    window.scrollTo(0,document.body.scrollHeight);
  }

  scroll() {
    window.scrollTo(0,document.body.scrollHeight);
  }
}
