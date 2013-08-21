'use strict'


var Bob = function() {
  this.hey = function(text) {
    var message = new Message(text)
    if (message.silence()) {
      return this.responses.silence
    } else if (message.shouting()) {
      return this.responses.shouting
    } else if (message.question()) {
      return this.responses.question
    } else {
      return this.responses.generic
    }
  }
}

Bob.prototype.responses = {
  silence: 'Fine. Be that way!',
  shouting: 'Woah, chill out!',
  question: 'Sure.',
  generic: 'Whatever.'
}

var Message = function(text) {
  this.text = text.trim()
}

Message.prototype.silence = function() {
  return (this.text === '')
}

Message.prototype.shouting = function() {
  return (this.text.toUpperCase() === this.text)
}

Message.prototype.question = function() {
  return (this.text.slice(-1) === '?')
}

module.exports = Bob
