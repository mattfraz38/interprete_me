function formatDate(date) {
  var hours = date.getHours();
  var minutes = date.getMinutes();
  hours = hours ? hours : 12; // the hour '0' should be '12'
  minutes = minutes < 10 ? '0'+minutes : minutes;
  var strTime = ('0'+hours).slice(-2) + ':' + minutes;
  return date.getFullYear() + "-" + ('0'+(date.getMonth()+1)).slice(-2) + "-" + date.getDate() + "  " + strTime;
}


function endDate(hours) {
  var start_date = new Date(document.querySelector(".datepicker").value);
  var new_date = new Date(start_date.getTime() + hours*3600000);
  var end_date = document.getElementById("end_date");
  end_date.innerHTML = `<div class="end_date_text"> End Time </div><p class = "black">${formatDate(new_date)}</p>`

};
