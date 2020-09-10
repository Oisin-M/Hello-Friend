import consumer from "./consumer"


document.addEventListener('turbolinks:load', () => {
  const swipe_element = document.getElementById('swipe_id');
  const swipe_id = swipe_element.getAttribute('data-swipe-id');

  const acc_element = document.getElementById('acc_id');
  const acc_id = acc_element.getAttribute('data-acc-id');

  consumer.subscriptions.subscriptions.forEach((subscription) => {
    consumer.subscriptions.remove(subscription)
  })

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
      console.log(data)
      if (acc_id==data.sender_id) {

      }
      else {
        const message_div = document.getElementById("message-box");
        message_div.innerHTML="<div class='row'><div class='col-lg-6 col-md-11 col-sm-6 col-xs-11'><div class='row'><div class='col-1 mr-2'><img class='thumb-image mr-2 msg-image' src='"+data.image_url+"'></div><div class='col'><div class='small-text'>"+data.sender+"</div><div class='container other-message'><span class='message-body'>"+data.message+"</span></div></div></div></div><div class='col-lg-6 col-md-1 col-sm-6 col-xs-1'></div></div><br/>"+message_div.innerHTML
      }
    }
  });

})
