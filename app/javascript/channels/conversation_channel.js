import consumer from "./consumer"


document.addEventListener('turbolinks:load', () => {
  const swipe_element = document.getElementById('swipe_id');
  const swipe_id = swipe_element.getAttribute('data-swipe-id');

  consumer.subscriptions.create({ channel: "ConversationChannel", swipe_id: swipe_id}, {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log("connected to conversation channel " + swipe_id)
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      // Called when there's incoming data on the websocket for this channel
      console.log(data);
      const message_div = document.getElementById("messages");
      message_div.innerHTML+=data.message
      message_div.innerHTML+=" - "
      message_div.innerHTML+=data.sender
      message_div.innerHTML+="</br>"
    }
  });

})
