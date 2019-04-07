<?php include 'inc/header.php'?>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$firstname = $fm->validation($_POST['firstname']);
		$lastname = $fm->validation($_POST['lastname']);
		$email = $fm->validation($_POST['email']);
		$body = $fm->validation($_POST['body']);

		$firstname = mysqli_real_escape_string($db->link, $firstname);
		$lastname = mysqli_real_escape_string($db->link, $lastname);
		$email = mysqli_real_escape_string($db->link, $email);
		$body = mysqli_real_escape_string($db->link, $body);

		$errorf = "";
		$errorl = "";
		$errore = "";
		$errorb = "";
		if (empty($firstname)) {
			$errorf = "First name must not be empty.";
		}
		if (empty($lastname)) {
			$errorl = "Last name must not be empty.";
		}
		if (empty($email)) {
			$errore = "Email must not be empty.";
		}
		if (empty($body)) {
			$errorb = "Message must not be empty.";
		}

/*		
		if (empty($firstname)) {
			$error = "First name must not be empty.";
		}elseif (!filter_var($firstname, FILTER_SANITIZE_SPECIAL_CHARS)) {
            $error = "Invalid Name.";
        }elseif (empty($lastname)) {
			$error = "Last name must not be empty.";
		}elseif (empty($email)) {
			$error = "Email Field must not be empty.";
		}elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error = "Invalid Email Address.";
		}elseif (empty($body)) {
			$error = "Message Field must not be empty.";

		}
*/
		else{
			$query = "INSERT INTO tbl_contact(firstname, lastname, email, body) VALUES('$firstname', '$lastname', '$email', '$body')";
            $inserted_rows = $db->insert($query);
            if ($inserted_rows) 
            {
                $msg = "Message Sent Successfully.";
            }
            else
            {
                $error = "Message Not Sent."; 
            }
		}
	}
?>
<style type="text/css">
	.cuserror{color: red; float: left;}
</style>

	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
				<h2>Contact us</h2>
				<?php
					/*
						if (isset($error)) {
							echo "<span style='color:red'>$error</span>";
						}
						if (isset($msg)) {
							echo "<span style='color:green'>$msg</span>";
						}
					*/
				?>
			<form action="" method="post">
				<table>
				<tr>
					<td>Your First Name:</td>
					<td>
						<?php 
							if (isset($errorf)) {
								echo "<span class='cuserror'>$errorf</span>";
							} 
						?>
					<input type="text" name="firstname" placeholder="Enter first name" />
					</td>
				</tr>
				<tr>
					<td>Your Last Name:</td>
					<td>
						<?php 
							if (isset($errorl)) {
								echo "<span class='cuserror'>$errorl</span>";
							} 
						?>
					<input type="text" name="lastname" placeholder="Enter Last name" />
					</td>
				</tr>
				
				<tr>
					<td>Your Email Address:</td>
					<td>
						<?php 
							if (isset($errore)) {
								echo "<span class='cuserror'>$errore</span>";
							} 
						?>
					<input type="email" name="email" placeholder="Enter Email Address" />
					</td>
				</tr>
				<tr>
					<td>Your Message:</td>
					<td>
						<?php 
							if (isset($errorb)) {
								echo "<span class='cuserror'>$errorb</span>";
							} 
						?>
					<textarea name="body">
						
					</textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
					<input type="submit" name="submit" value="Send"/>
					</td>
				</tr>
		</table>
	<form>				
 </div>

		</div>
<?php include 'inc/sidebar.php'?>
	</div>
<?php include 'inc/footer.php'?>