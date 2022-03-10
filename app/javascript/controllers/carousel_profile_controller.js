
import { Controller } from "stimulus";
import "slick-carousel";
import $ from  "jquery";

export default class extends Controller {
  static targets = [ "" ]

  connect() {
    // console.log(this.element)
    $(this.element).slick({
      infinite: true,
      dots: true,
      autoplay: true,
      autoplaySpeed: 3000,
      slidesToShow: 2,
      slidesToScroll: 1

    });

  }
}
