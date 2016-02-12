$(function() {
  $.get("/users/data", function(events){

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

  $.get("/users/languages", function(language) {

    var languageArray = [];
    for (var key in language) {
      languageArray.push([key, language[key].length]);
    }

    $("#chart-two").highcharts({
      chart: {
        type: "column"
      },
      title: {
        text: "Repo languages"
      },
      xAxis: {
            type: 'category',
            labels: {
                rotation: -45,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
      series: [{
        name: "languages",
        data: languageArray
      }]
    });
  });
});
