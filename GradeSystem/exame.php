<?php
session_start();
error_reporting(0);
include('includes/config.php');
include_once 'dbConnection.php';

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Result Management System</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body>
        <div class="main-wrapper">
            <div class="content-wrapper">
                <div class="content-container">

         
                    <!-- /.left-sidebar -->

                    <div class="main-page">
                        <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-md-12">
                                    <h2 class="title" align="center">Result Management System</h2>
                                </div>
                            </div>
                            <!-- /.row -->
                          
                            <!-- /.row -->
                        </div>
                        <!-- /.container-fluid -->

                        <section class="section" id="exampl">
                            <div class="container-fluid">

                                <div class="row">
                              
                             

                                    <div class="col-md-8 col-md-offset-2">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h3 align="center">Student Result Details</h3>
                                                    <hr />
<?php
// <?php
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$rollid =@$_GET['rollid'];
$total=@$_GET['t'];
$q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' ");//AND sn='$sn' " );

$count = 1;
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];
echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b><br /><br />';
$q2=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'&rollid='.$rollid.'" method="POST"  class="form-horizontal">
<br />';
while($row=mysqli_fetch_array($q2) )
{
$option=$row['option'];
$optionid=$row['optionid'];
echo'<input type="radio" name="ans'.$count.'" value="'.$optionid.'">'.$option.'<br /><br />';
}
$count++;
}
echo'<br /><button type="submit" align ="center"class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
// header("location:dash.php?q=4&step=2&eid=$id&n=$total");
}

//start  
if(isset($_GET['subject'])){
// echo "mohannad";
    
    $sub = $_GET['subject'];
    $rollid = $_GET['rollid'];
    $title=$_GET['title'];
    // echo $sub;
    
$q=mysqli_query($con,"SELECT * FROM exame WHERE sid='$sub' and title ='$title' " );
$num_rows =mysqli_num_rows($q);
$q3=mysqli_query($con,"SELECT * FROM tblstudents WHERE rollid ='$rollid'" );
$num_student =mysqli_num_rows($q3);

if($num_student===0){
    ?>
    
    <div class="alert alert-danger left-icon-alert" role="alert">
                   <strong> write right student roll id </strong>
    <?php

}else{

if($num_rows===0){
    ?>
    
    <div class="alert alert-danger left-icon-alert" role="alert">
                   <strong> wronge informantion about the exame please be sure and try again </strong>
    <?php

}else{
   
while($row=mysqli_fetch_array($q) )
{
$eid=$row['eid'];
$total=$row['total'];
$q2=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' and rollid ='$rollid' " );
$num_rows =mysqli_num_rows($q2);
if($num_rows===0){
    header("location:exame.php?q=quiz&step=2&eid=$eid&n=1&t=$total&rollid=$rollid");

}else{
    header("location:exame.php?q=result&eid=$eid&rollid=$rollid");
    
}

}

    
}

}
}

//result 

if (@$_GET['q']=='result'){
    $eid = $_GET['eid'];
    $rollid = $_GET['rollid'];
    $q2=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' and rollid ='$rollid' " );
    echo  '<div class="panel">
    <center><h1 class="title" style="color:#660033">Result</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';
    
    while($row=mysqli_fetch_array($q2) )
    {
    $s=$row['score'];
    $w=$row['wrong'];
    $r=$row['sahi'];
    $qa=$row['level'];
    echo '<tr ><td>Total Questions</td><td>'.$qa.'</td></tr>
          <tr style="color:#99cc32"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
          <tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
          <tr ><td>Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$s.'/'.$qa.'</td></tr>';
    }
    ?>
    <div class="alert alert-info left-icon-alert" role="alert">
                   <strong> this student compelete this exame </strong>
    
    <?php
    

}
?>  
                                          </div>
                                        </div>
                                        <!-- /.panel -->
                                    </div>
                                    <!-- /.col-md-6 -->

                                    <div class="form-group">
                                                           
                                                            <div class="col-sm-6">
                                                               <a href="index.php">Back to Home</a>
                                                            </div>
                                                        </div>

                                </div>
                                <!-- /.row -->
  
                            </div>
                            <!-- /.container-fluid -->
                        </section>
                        <!-- /.section -->

                    </div>
                    <!-- /.main-page -->

                  
                </div>
                <!-- /.content-container -->
            </div>
            <!-- /.content-wrapper -->

        </div>

        <script src="js/jquery/jquery-2.2.4.min.js"></script>
       
        <script>
            $(function($) {

            });


            function CallPrint(strid) {
var prtContent = document.getElementById("exampl");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}
</script>


        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->

    </body>
</html>
