import consumer from './consumer';

consumer.subscriptions.create({ channel: 'MatchChannel', id: '11' }, {
  received(data) {
    $('#goals').append(this.createGoal(data));
  },
  createGoal(data) {
    return `
      <tr>
        <td>${data.team}</td>
        <td>${data.player}</td>
        <td>${data.minute}</td>
      </tr>
    `
  }
});

