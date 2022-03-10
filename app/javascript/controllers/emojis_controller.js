import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form" ]

  submit(event) {
    event.preventDefault()

    // pour récupérer l'url du formulaire
    const url = this.formTarget.action

    // méthode pour ajaxifier
    console.log(url)
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      this.element.outerHTML = data
    })
  }
}
