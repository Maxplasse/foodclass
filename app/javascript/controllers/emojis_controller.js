import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "emoji" ]

  connect() {
    console.log("Hello emojis");
  }

  selectEmoji(event) {
    const selected_emoji = event.currentTarget.textContent
    console.log(selected_emoji);
    const emoji = [selected_emoji.selectedIndex].textContent;
    console.log(emoji);
  }
}
