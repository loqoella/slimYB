google.charts.load('current', {'packages': ['corechart', 'bar']});

var graphData = new google.visualization.DataTable();
graphData.addColumn('number', 'male');
graphData.addColumn('number', 'female');
var maleCount = 0;
var femaleCount = 0;
var i;
var genders = document.getElementsByClassName("gender");
for (i = 0; i < genders.size(); i++) {
	maleCount = (genders[i].getGender() == "male") ? maleCount + 1 : maleCount;
	femaleCount = (genders[i].getGender() == "female") ? femaleCount + 1 : femaleCount;
}
graphData.addRow(maleCount, femaleCount);
var options = {
		width: 300,
		height: 300
}
var chart = new google.visualization.ColumnChart(document.getElementById("chart")[0]);