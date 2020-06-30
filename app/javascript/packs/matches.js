function refresh(id) {
  $.get(`/matches/${id}/goals`);
  setTimeout(refresh(id), 5000);
}

const polling = (id) =>  {
  setTimeout(refresh(id), 5000);
}