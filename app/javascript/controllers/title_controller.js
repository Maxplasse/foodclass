import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // const fontSizeOutput = ( scrolled ) => {
  //   console.log(scrolled);

  // }
  updateTitleSize() {
    const scrolled = (window.scrollY)/(window.innerHeight-90)

    // min width 992px
    const maxFontSize = 220
    const minFontSize = 40
    // min width 768px
    const maxFontSize1 = 180
    const minFontSize1 = 40

    // min width 576px
    const maxFontSize2 = 120
    const minFontSize2 = 28

    // min width 414px
    const maxFontSize3 = 80
    const minFontSize3 = 20

    // max width 414px
    const maxFontSize4 = 80
    const minFontSize4 = 15


    // fontSizeOutput(scrolled)
    if (window.matchMedia("(max-width: 414px)").matches) {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize4 - minFontSize4)) + minFontSize4 : minFontSize4
      this.element.style.fontSize = `${fontSize}px`;
    } else if (window.matchMedia("(max-width: 576px)").matches) {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize3 - minFontSize3)) + minFontSize3 : minFontSize3
      this.element.style.fontSize = `${fontSize}px`;
    } else if (window.matchMedia("(max-width: 768px)").matches) {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize2 - minFontSize2)) + minFontSize2 : minFontSize2
      this.element.style.fontSize = `${fontSize}px`;
    } else if (window.matchMedia("(max-width: 992px)").matches){
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize1 - minFontSize1)) + minFontSize1 : minFontSize1
      this.element.style.fontSize = `${fontSize}px`;
    } else {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize - minFontSize)) + minFontSize : minFontSize
      this.element.style.fontSize = `${fontSize}px`;
    }
  }
}
