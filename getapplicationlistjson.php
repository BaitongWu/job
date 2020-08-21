<?php
header("Content_type:text/html;charset=utf-8");  
header('Content-type: application/json');  
require_once 'conn.php';
session_start();
if(true)
{ 
	$user_Id=$_SESSION['userId'];
	$sql="SELECT
joinjobs.Id,
jobposting.categories,
jobposting.regions,
jobposting.`position`,
jobposting.requirement,
jobposting.numbers,
jobposting.company_Id,

resume.usr_Id,
resume.firstname,
resume.lastname,
resume.sex,
resume.yearold,
resume.graduate,
resume.skill,
resume.mobile,
joinjobs.createdt
FROM
joinjobs
Inner Join `user` ON `user`.Id = joinjobs.user_Id
Inner Join jobposting ON jobposting.Id = joinjobs.jobposting
Inner Join resume ON resume.usr_Id = `user`.Id  where jobposting.company_Id=$user_Id ";    
echo $sql;
	$result =mysqli_query($conn,$sql); 
	$data=array();
	if($result&&mysqli_num_rows($result)>0){
		while($row=mysqli_fetch_assoc($result)){
			$data[]=$row;
		}
	}	 	 
	if($data!=null){
		$jsondata = json_encode($data);
		ob_clean();
		echo urldecode($jsondata);  
	}
}else
{
	$info="{\"success\":\"false\",\"data\":\"\",\"error\":\"null\"}";
	echo $info;
}

?>