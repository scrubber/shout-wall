var MessageForm = Class.create({
  initialize: function(form, messages) {
    this.form = $(form);
    this.form.observe('submit', this.submitForm.bindAsEventListener(this));

    this.messages = $(messages);
  },

  submitForm: function(event) {
    event.stop();

    this.form.request({
      onSuccess: this.messageCreated.bindAsEventListener(this)
    });
  },

  messageCreated: function(transport) {
    this.messages.insert({ 'top': transport.responseText });

    new_message = this.messages.down('div.message');
    new Effect.Highlight(new_message);
  }
});

Event.observe(window, 'load', function () {
  new MessageForm('message-form', 'messages');
});
