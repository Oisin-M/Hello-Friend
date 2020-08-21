import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {

  const acc_element = document.getElementById('acc_id');
  const acc_id = acc_element.getAttribute('data-acc-id');

  consumer.subscriptions.create({channel: "SidebarconversationsChannel"}, {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log("connected to sidebarconversations channel");
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      // Called when there's incoming data on the websocket for this channel

      //if relevant to my account, do stuff
      //might want to have separate sidebar channel for each account and then send data to those instead of just to everyone
      if (data.acc_id1==acc_id || data.acc_id2==acc_id) {
        const swipe_span = document.getElementById("swipe"+data.swipe_id);
        var html_to_add = data.sender+data.message;
        swipe_span.innerHTML=html_to_add;
        MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
      }
    }
  });

})
