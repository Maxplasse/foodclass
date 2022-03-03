
import { Controller } from "stimulus";
import "slick-carousel";
import $ from  "jquery";

export default class extends Controller {
  static targets = [ "" ]

  connect() {
    $(this.element).slick({
      infinite: true,
      dots: true,
      autoplay: true,
      autoplaySpeed: 2000,
      slidesToShow: 3,
      slidesToScroll: 1

    });

  }
}
