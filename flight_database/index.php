<!DOCTYPE html>
<html>
	<head>
		<title>Flight Database</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 

         <style>
         	table, th, td {
			   	border: 1px solid black;
			}
			
			th, td{
				padding: 0px 15px 0px 15px;
			}
         </style>
	</head>

	<body>
		<?php 
			$connection = mysqli_connect('localhost','root','','flight_database');
		?>
		<div class="container">
			<center>
				<h1>Team 408 - Flight Database</h1>
				<b>Team Members:</b><br/>
				Seling Chen, Duoc Nguyen, Quoc Nguyen<br/>
			</center>
			<hr/>


			<center><h3>Relations</h3></center>
			<ol>
				<li><a href="/flight_database/index.php/?query=Select * From Airplane;" >Airplane</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Airport;" >Airport</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From ArrivesAt;" >ArrivesAt</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Company;" >Company</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Contains;" >Contains</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From DepartsAt;" >DepartsAt</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Flight;" >Flight</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From NonStaff;" >NonStaff</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Operates;" >Operates</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Passenger;" >Passenger</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Reserves;" >Reserves</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Seat;" >Seat</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Staff;" >Staff</a></li>
				<li><a href="/flight_database/index.php/?query=Select * From Uses;" >Uses</a></li>
			</ol>
			<hr/>



			<center><h3>Queries</h3></center>
			<ol>
				<li><a href="/flight_database/index.php/?query=SELECT name FROM passenger, seatbooking2 WHERE passenger.passengerID = seatbooking2.passengerID AND flightNumber=1010 GROUP BY name;" >Query 1 - </a>Find passengers who booked a seat on flight 1010</li>
				<li><a href="/flight_database/index.php/?query=SELECT Flight1.flightNumber, departureDay, arrivalDay, departureTime, arrivalTime FROM Flight1, Flight2 WHERE Flight1.flightNumber = Flight2.flightNumber AND arrivingAirport = 'Cal Poly Pomona';" >Query 2 - </a>Find departureDay, arrivalDay, departure/arrivalTime for flights going to
	Cal Poly Ponoma</li>
				<li><a href="/flight_database/index.php/?query=SELECT airplane.capacity - COUNT(passengerID) FROM flight2, seatbooking2, airplane WHERE flight2.flightNumber = seatbooking2.flightNumber AND flight2.modelNumber = airplane.modelNumber AND flight2.arrivingAirport = 'CSU Los Angeles';">Query 3 - </a>Count number of available seats for a flight going to CSU Los Angeles</li>
				<li><a href="/flight_database/index.php/?query=SELECT COUNT(passengerID) FROM Flight2, seatbooking2 WHERE Flight2.flightNumber = seatbooking2.flightNumber AND arrivingAirport = 'CSU Los Angeles';" >Query 4 - </a>Count number of booked seats for a flight going to CSU Los Angeles</li>
				<li><a href="/flight_database/index.php/?query=SELECT flight2.departingAirport FROM flight1, flight2 WHERE flight1.flightNumber = flight2.flightNumber AND flight2.arrivingAirport = 'San Jose State University' AND flight1.arrivalDay = 'Wednesday';" >Query 5 - </a>Find airports who are flying flights to San Jose on Wednesday</li>
				<li><a href="/flight_database/index.php/?query=SELECT companyName FROM PlaneManufacturer WHERE modelNumber = '728';" >Query 6 - </a>Find the company name that manufactured flight 728</li>
				<li><a href="/flight_database/index.php/?query=SELECT Passenger.name FROM Staff1, Staff2, Passenger, FlightStaff WHERE Staff1.employeeID = Staff2.employeeID AND Staff2. employeeID = FlightStaff.employeeID AND Staff2.passengerID = Passenger.passengerID AND Staff1.employeePosition = 'pilot' AND FlightStaff.flightNumber = 1024;" >Query 7 - </a>Find the names of the pilots operating flight 1024</li>
				<li><a href="/flight_database/index.php/?query=SELECT Passenger.name FROM Staff1, Staff2, Passenger, FlightStaff WHERE Staff1.employeeID = Staff2.employeeID AND Staff2. employeeID = FlightStaff.employeeID AND Staff2.passengerID = Passenger.passengerID AND Staff1.employeePosition = 'flight attendant' AND FlightStaff.flightNumber = 1024;" >Query 8 - </a>Find the names of the flight attendants operating flight 1024</li>
				<li><a href="/flight_database/index.php/?query=SELECT Passenger.name FROM Staff2, SeatBooking2, Passenger WHERE Staff2.passengerID = SeatBooking2.passengerID AND Staff2.passengerID = Passenger.passengerID ORDER BY Passenger.name;" >Query 9 - </a>Find the names of staffs who also booked a flight</li>
				<li><a href="/flight_database/index.php/?query=SELECT COUNT(flightNumber) FROM FlightStaff WHERE FlightStaff.employeeID = '6454';" >Query 10 - </a>Count the number of flights operated by employee 6454</li>
				<li><a href="/flight_database/index.php/?query=SELECT COUNT(Flight1.flightNumber) FROM Flight1, Flight2 WHERE Flight1.flightNumber = Flight2.flightNumber AND Flight2.arrivingAirport = 'San Jose State University' and Flight1.arrivalDay = 'Tuesday';" >Query 11 - </a>Count the number of flights arriving to San Jose on a Tuesday</li>
				<li><a href="/flight_database/index.php/?query=SELECT COUNT(Airport.school) FROM Airport, PlaneManufacturer WHERE Airport.school = PlaneManufacturer.companyName ORDER BY Airport.school;" >Query 12 - </a>Count the number of CSUs that are both airports and airplane
	manufacturers</li>
				<li><a href="/flight_database/index.php/?query=SELECT DISTINCT Flight2.arrivingAirport FROM PlaneManufacturer, Flight2 WHERE Flight2.modelNumber = PlaneManufacturer.modelNumber AND PlaneManufacturer.companyName = 'San Jose State University' ORDER BY Flight2.arrivingAirport;" >Query 13 - </a>Find all city names that SJSU company’s plane flies to</li>
				<li><a href="/flight_database/index.php/?query=SELECT modelNumber FROM Airplane WHERE modelNumber NOT IN( SELECT modelNumber FROM Flight2 ) ORDER BY Airplane.modelNumber;" >Query 14 - </a>Find airplanes models that are not flown in flights</li>
				<li><a href="/flight_database/index.php/?query=SELECT name FROM Company WHERE Company.name NOT IN ( SELECT companyName FROM PlaneManufacturer ) ORDER BY Company.name;" >Query 15 - </a>Find company names who have not manufactured any planes</li>
			</ol>
			<hr/>



			<center><h3>Ad-hoc Query</h3></center>
			<FORM METHOD=GET ACTION="">
				<div class="col-md-12">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
			            <textarea class="form-control" rows="10" style="width: 100%"name="query" placeholder="Please enter your query here. (We support Select, Insert, Update, and Delete queries)"></textarea>
			            <div style="text-align: right">
				            <button class="btn btn-danger" type=reset>Clear</button>
				            <button class="btn btn-primary" type=submit>Submit</button>
			            </div>
		            </div>
		            <div class="col-md-3">
					</div>
				</div>
			</FORM>



			<div class="col-md-12">
			<hr/>
				<?php
					if (isset($_REQUEST['query']) && ($_REQUEST['query']) != "")
					{
						echo "<center>";
						echo "<center><h3>Result</h3></center>";
						print "<b>You Queried: </b>".$_REQUEST['query']."<br/>";
						// print $_REQUEST['query']."<br/>";
						echo "<a href=\"/flight_database/index.php/\">Reset Query?</a>";
						$result = mysqli_query($connection, $_REQUEST['query']);
						$num_fields = mysqli_num_fields($result);
						$fields = mysqli_fetch_fields($result);

						echo "<table>";

						echo "<tr>";
						for($i = 0; $i<$num_fields; $i++){
							echo "<th>";
							echo "<center>".$fields[$i]->name."</center>";
							echo "</th>";
						}
						echo "</tr>";

						while($row = mysqli_fetch_assoc($result)){
							echo "<tr>";
							foreach($row as $column){
								echo "<td>";
								echo $column;
								echo "</td>";
							}

							echo "</tr>";
						}

						echo "</table></center>";
					}
				?>
				<br/>
			</div>
		</div>
	</body>
</html>
