import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const acc_element = document.getElementById('acc_id');
  const acc_id = acc_element.getAttribute('data-acc-id');

  consumer.subscriptions.create({ channel: "LikeChannel", account_id: acc_id}, {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log("connected to like channel "+ acc_id);
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      // Called when there's incoming data on the websocket for this channel
      console.log(data);
      const my_project_conversations = document.getElementById(data.project_id);

      my_project_conversations.innerHTML+="<p class='card-text'>"
      my_project_conversations.innerHTML+=data.email
      my_project_conversations.innerHTML+=" | Jay: Hello "
      my_project_conversations.innerHTML+="<a href='/swipes/"+data.swipe_id+"'>Message</a></p>"
    }
  });

})
