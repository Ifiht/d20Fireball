import consumer from "channels/consumer"

consumer.subscriptions.create({ channel: "ChatChannel", party_id: partyId }, {
  received(data) {
    document.getElementById("chat").innerHTML += `<p><strong>${data.user}:</strong> ${data.message}</p>`;
  }
});
