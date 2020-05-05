// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// lastPieChart
var ctx = document.getElementById("lastPieChart");
var lastPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData1,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});


//beforeLastPieChart
var ctx2 = document.getElementById("beforeLastPieChart");
var beforeLastPieChart = new Chart(ctx2, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData2,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});


//thirdLastPieChart
var ctx3 = document.getElementById("thirdLastPieChart");
var thirdLastPieChart = new Chart(ctx3, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData3,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});


//fourthLastPieChart
var ctx4 = document.getElementById("fourthLastPieChart");
var fourthLastPieChart = new Chart(ctx4, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData4,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});


//fifthLastPieChart
var ctx5 = document.getElementById("fifthLastPieChart");
var fifthLastPieChart = new Chart(ctx5, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData5,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});


//sixthLastPieChart
var ctx6 = document.getElementById("sixthLastPieChart");
var sixthLastPieChart = new Chart(ctx6, {
  type: 'doughnut',
  data: {
    labels: ["일반관리비", "경비비", "청소비", "소독비", "승강기유지비", "전기세", "수도세", "난방비"],
    datasets: [{
      data: pieData6,
      backgroundColor: ['#4e73df', '#1cc88a', '#ccce26','#d2b9e3','#ff9232','#f6c23e','#36b9cc','#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});