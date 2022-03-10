import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "carrot", "panel" ]
  static values = { page: String }

  connect() {
    console.log(this.pageValue)
    if (this.pageValue != "posts_index") return;
    setTimeout(() => {
          this.panelTarget.classList.remove('is-active');
        }, 3500);
  }

  show() {
    if (this.pageValue != "posts_index") {
      this.panelTarget.classList.add('is-active');
    }
  }
  // sweepTransition() {
  //   console.log(this.linkTarget)
  // }
}
