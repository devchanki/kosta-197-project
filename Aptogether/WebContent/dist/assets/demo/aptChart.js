var mychart = $("#line-chart");
var myLineChart = new Chart(mychart, {
	  type: 'bar',
	  data: {
	    labels: ["January", "February", "March", "April", "May", "June"],
	    datasets: [{
	      label: "총 금액",
	      backgroundColor: "rgba(2,117,216,1)",
	      borderColor: "rgba(2,117,216,1)",
	      data: [90000, 10000, 20000, 15000, 11000, 6700],
	    }],
	  },
	  options: {
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'month'
	        },
	        gridLines: {
	          display: false
	        },
	        ticks: {
	          maxTicksLimit: 6
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          min: 0,
	          max: 200000,
	          stepSize: 50000,
	          maxTicksLimit: 10
	        },
	        gridLines: {
	          display: true
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
});