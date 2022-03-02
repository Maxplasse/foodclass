import { Controller } from "stimulus";
import "slick-carousel";
import $ from  "jquery";

export default class extends Controller {
  static targets = [ "" ]

  connect() {
    $(this.element).slick({
      infinite: true,
      dots: true,
      slidesToShow: 3,
      slidesToScroll: 3

    });

  }
}
