import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["link", "card"]

  connect() {
  }

  toggleFav(event) {
    event.preventDefault()
    const url = this.linkTarget.href

    fetch(url, {
      method: "PATCH",
      headers: {
        "Accept": "text/plain",
        "X-CSRF-Token": csrfToken()
      }
    })
      .then(response => response.text())
      .then((data) => {
        this.cardTarget.outerHTML = data
      })
  }
}
