import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["traitSelect"]
  change(event){
    console.log("pls")
    let type = event.target.selectedOptions[0].value
    let target = this.traitSelectTarget.id
    get(`/pokemons/items?target=${target}&trait=${type}`, {
      respondKind: "turbo-stream"
    })
  }
 }
