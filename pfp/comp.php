<html>
<head>
		<title>Complaints are here</title>
		
		<style>
		#abc {
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		border-collapse: collapse;
		width: 100%;
		}
		#abc td, #abc th {
		border: 1px solid #ddd;
		padding: 8px;
		}
		

#abc tr:hover {background-color: #ddd;}

#abc th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: white;
  color: gray;
}
h1{
	color:#8B4513;
	font-family:sans-serif;
	font-style:italic;
}

#abc{
	margin-top: 35px;
	color:white;
}
#aaa{
	margin-top: 165px;
	color:white;
}

</style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.css">
    <link href="css/stylesheet.css" rel="stylesheet">
     
  </head>

  <body class="tohelp1">
    
    <nav class="navbar navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">PUBLIC FRIENDLY PORTAL</a>
            </div>
            
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="inactive"><a href="index.html">Home</a></li>
                    <li class="inactive"><a href="complaint.php">File a Complaint</a></li>
                    <li class="active"><a href="login.php">Help</a></li>
					<li class="inactive"><a href="login.php">LogOut</a></li>
                    
                </ul>
            </div>
            
        </div>
    </nav>

		
		<center><h1 id="aaa">Complaints are here!</h1></center>
		
		<table id="abc">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Type</th>
			<th>Details</th>
			<th>Contact</th>
			<th>Assistance</th>
		
			
			
		</tr>
		<?php
		$conn=mysqli_connect("localhost","root","","cryout");
		if($conn->connect_error){
			die("Connection failed:".$conn->connect_error);
		}
		
		$sql="SELECT id,type,name,email,details,phone from fileacomplaint";
		$result=$conn->query($sql);
		
		if ($result->num_rows>0){
			while($row=$result->fetch_assoc()){
				
			
				echo"<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["email"]."</td><td>".$row["type"]."</td><td>".$row["details"]."</td><td>".$row["phone"]."</td></tr>";
			 // echo"<td>".$row["medical"]==1?'Medical':'Police'."</td></tr>";
			}
			echo"</table>";
		}
		?>
	</table>
	
	
	</html>