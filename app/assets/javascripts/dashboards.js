$(function() {
  $.get("/users/data", function(events){
    console.log(events);

    var eventArray = [];
    for (var key in events) {
      eventArray.push({name: key, y: events[key].length});
    }

    $("#chart-container").highcharts({
      chart: {
        type: "pie"
      },
      title: {
        text: "User Events"
      },
      series: [{
        name: "Events",
        data: eventArray
      }]
    });
  });
});
