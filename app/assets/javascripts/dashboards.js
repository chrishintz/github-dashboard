$(function() {
  $.get("/users/data", function(response){
    console.log(response);

    var pieData = response.map(function(pie) {
      return {name: pie.flavor, y: pie.votes};
    });

    $("#chart-container").highcharts({
      chart: {
        type: "pie"
      },
      title: {
        text: "Favorite Pies"
      },
      series: [{
        name: "Pies",
        data: pieData
      }]
    });
  });
});
