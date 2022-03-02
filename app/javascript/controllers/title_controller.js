import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // const fontSizeOutput = ( scrolled ) => {
  //   console.log(scrolled);

  // }
  updateTitleSize() {
    const maxFontSize = 200
    const minFontSize = 34
    const scrolled = (window.scrollY)/(window.innerHeight-80)
    // fontSizeOutput(scrolled)
    const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize - minFontSize)) + minFontSize : minFontSize
    this.element.style.fontSize = `${fontSize}px`;
  }
}
