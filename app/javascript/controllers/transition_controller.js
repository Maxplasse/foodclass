import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "carrot" ]

  connect() {
    setTimeout(() => {
          this.element.classList.remove('is-active');
          this.carrotTarget.classList.add('carrot-fall-from-top')
        }, 1500);
  }

  sweepTransition() {
    console.log(this.linkTarget)
  }
}
