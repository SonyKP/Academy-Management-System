<?php
	require('db_connectivity.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Orisys Academy Management System</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/complaint_by_admin.css">
	</head>
	<body class="table">
	 <div>
	    <h1>INQUIRY DETAILS</h1>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Subject</th>
					<th>Message</th>
					<th colspan="3" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$sql="select * from contact_tb";
					if(mysqli_query($mysql,$sql))
					{
						$result=mysqli_query($mysql,$sql);
						if(mysqli_num_rows($result)>0)
						{
							while($row=mysqli_fetch_assoc($result))
							{
								echo "<tr>
									<td>".$row['name']."</td>
									<td>".$row['email']."</td>
									<td>".$row['subject']."</td>
									<td>".$row['message']."</td>
									<td><a href='delete_inquiry.php?id=".$row['id']."'>Delete</a></td>";
							}
						}
					}
				?>
				
			</tbody>
			
		</table>
		<div class="back">
			<a href="admin_home.php" style="text-decoration:none">Back to Home</a>
		</div>
	</div>
	</body>
</html>