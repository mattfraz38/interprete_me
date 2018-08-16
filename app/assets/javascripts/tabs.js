function openCity(evt, tabName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

document.getElementById("defaultOpen").click();

function addMinutes(date, minutes) {
    return new Date(date.getTime() + minutes*60000);
}

function endDate() {
  var start_date = new Date(document.getElementById("start_day").value);
  var days = document.getElementById('days').innerText;
  var new_date = new Date(start_date.getTime() + days*86400000);

  var end_date = document.getElementById("end_date");
  end_date.innerHTML = `<div class="end_date_text"> End Date: </div>${new_date.toDateString()}`
};
