import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["messages"]

  connect() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight;
  }
}
