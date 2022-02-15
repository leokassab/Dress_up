import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'head', 'chest', 'leg', 'foot'];



  // connect() {
  //   console.log(this.headTargets);
  //   console.log(this.headTarget.classList);
  // }

  send(event) {
    event.preventDefault();
    const headextraction = () => {
      this.headTargets.forEach((div) => {
        if (div.classList[1] === "active") {
          return div.id;
        }
      });
    };

    const outfit_name = this.formTarget.outfit_name.value;


    this.headTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        const head_id = div.id;
        console.log(head_id);
      }
    });

    this.chestTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        const chest_id = div.id;
      }
    });

    this.legTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        const leg_id = div.id;
      }
    });

    this.footTargets.forEach((div) => {
      if (div.classList[1] === "active") {
        const foot_id = div.id;
      }
    });


    const url = this.formTarget.action;
    fetch(url, {
      method: 'POST',
      body: JSON.stringify({ name: this.formTarget.outfit_name.value,
                              head_id: headextraction()})
     })
    // .then(response => response.text())
    // .then((data) => {
    //   console.log(data);
    // })



    }

  }
