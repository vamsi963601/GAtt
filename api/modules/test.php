<?php

header("Access-Control-Allow-Headers: content-type");
header("Access-Control-Allow-Origin: *");

include_once '../config/database.php';

$fun = $_GET['/'];
$test = new Test();
$db = new Database();
$test->$fun($db);

class Test{


//registration starts here


	// public function register($db){
	// 	$data = json_decode(file_get_contents("php://input"),true);
	// 	$email = $data['email'] == null ? $_POST['email'] : $data['email'];
	// 	$firstname = $data['firstname'] == null ? $_POST['firstname'] : $data['firstname'];
	// 	$lastname =  $data['lastname'] == null ? $_POST['lastname'] : $data['lastname'];
	// 	$user_id = $data['user_id'] == null ? $_POST['user_id'] : $data['user_id'];
	// 	$password = sha1( $data['password'] == null ? $_POST['password'] : $data['password']);
	// 	$check = $db->query("SELECT * FROM users WHERE email='$email'");
	// 	$check = $db->mysqli_num_row($check);
	// 	if($check==0){
	// 		$query = $db->query("INSERT INTO users(`first_name`,`last_name`,`email`,`password`,`user_id`) VALUES('$firstname','$lastname','$email','$password','$user_id')");
	// 		if ($query==true) {
	// 			$message=[
	// 				"status"=>1,
	// 				"message"=>"Successfully Registered"
	// 			];
	// 		}else{
	// 			$message=[
	// 				"status"=>0,
	// 				"message"=>"Failed to Register"
	// 			];
	// 		}
	// 	}
	// 	else{
	// 		$message=[
	// 			"status"=>0,
	// 			"message"=>"E-Mail Already Exists",
	// 		];
	// 	}
	// 		$db->response($message);
	// }


//login starts here

	public function login($db){
		$data = json_decode(file_get_contents("php://input"),true);
		
		
		$user_id = $data['user_id'] == null ? $_POST['user_id'] : $data['user_id'];
		$password =$data['password'] == null ? $_POST['password'] : $data['password'];
		$ucheck = $db->query("SELECT * FROM users WHERE user_id='$user_id'");
		if($db->mysqli_num_row($ucheck)>0){
			$qq = $db->query("SELECT * from users WHERE user_id='$user_id' AND password='$password'");
			if($db->mysqli_num_row($qq)>0){
				$message=[
					"status"=>1,
					"message"=>"Login Success!",
					"user_name"=>$qq[0]['first_name']." ".$qq[0]['last_name']
				];
			}
			else{
				$message=[
					"status"=>0,
					"message"=>"Invalid Login Details!"
				];
			}
		}
		else{
			$message=[
				"status"=>0,
				"message"=>"User does not Exists"	
			];
		}
		$db->response($message);
	}

	public function getCourses($db)
	{
		
		$data = json_decode(file_get_contents("php://input"),true);
		$user_id = $data['user_id'] == null ? $_POST['user_id'] : $data['user_id'];
		
		
		$getCourse = $db->query("SELECT DISTINCT course_id,sec,branch,sem,subj,year FROM time_table WHERE user_id='$user_id'");

		$message=[
			"data"=> $getCourse
		];
		$db->response($message);


	}
	public function getTodayAtt($db){
	
		$data = json_decode(file_get_contents("php://input"),true);
		$user_id = $data['user_id'] == null ? $_POST['user_id'] : $data['user_id'];
		
		$day= date('D');
		if($day=="Wed"){
			$day .= "nesday";
		}
		else if($day=="Tue"){
			$day .= "sday";
		}
		else if ($day=="Thu"){
			$day .="rsday";
		}
		else if ($day=="Sat"){
			$day .="urday";
		}
		else{
			$day .= "day";
		}
		$getCourse = $db->query("SELECT * FROM time_table WHERE user_id='$user_id' AND day='$day'");

		$message=[
			"data"=> $getCourse
		];
		$db->response($message);

	}



	//class ends HERE..!!!
}

?>