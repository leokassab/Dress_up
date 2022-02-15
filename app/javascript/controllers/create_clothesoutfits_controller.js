import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form', 'head', 'chest', 'leg', 'foot'];

  send(event) {
    // event.preventDefault();

    // Récupère le nom de l'outfit
    const outfit_name = this.formTarget.outfit_name.value;

    // Donne le head affiché à l'écran
    const headextraction = () => {
      this.headTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          return div.id;
        }
      });
    };

    // Donne le chest affiché à l'écran
    const chestextraction = () => {
      this.chestTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          return div.id;
        }
      });
    };

    // Donne le leg affiché à l'écran
    const legextraction = () => {
      this.legTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          return div.id;
        }
      });
    };

    // Donne le foot affiché à l'écran
    const footextraction = () => {
      this.footTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          return div.id;
        }
      });
    };

    // je tente d'enoyer mes 4 données à l'outfits controller
    const url = "outfits/new";
    console.log(url);
    fetch(url, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken()},
      body: JSON.stringify({ name: this.formTarget.outfit_name.value,
                              head_id: headextraction(),
                              chest_id: chestextraction(),
                              leg_id: legextraction(),
                              foot_id: footextraction()})
     })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });



  }

}
