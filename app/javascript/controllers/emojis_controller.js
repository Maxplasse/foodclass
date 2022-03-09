import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "emoji" ]

  connect() {
    console.log("Hello emojis");
  }

  selectEmoji() {
    console.log(this.emojiTarget);
  }
}
