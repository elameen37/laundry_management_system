
<?php
session_start();
error_reporting(0);
include('user/include/dbconnection.php');

     ?>


<!DOCTYPE html>
<html lang="en">

<head>
  <title>Rosedell Laundry and Drycleaning Services</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="css/sb-admin.css" rel="stylesheet">
</head>
<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.html">Laundry Management System</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

   

    <!-- Navbar -->
    

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
    
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-users"></i>
          <span>Users</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
        
          <a class="dropdown-item" href="user/register.php">User Signup</a>
          <a class="dropdown-item" href="user">User Signin</a>
     
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin">
          <i class="fas fa-fw fa-user"></i>
          <span>Admin Signin</span></a>
      </li>
 
    </ul>



    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.php">Rosedell Laundry and Drycleaning Services</a>
          </li>
          <li class="breadcrumb-item active">Welcome Page</li>
        </ol>

        <!-- Page Content -->
        <h2>Welcome to Rosedell Laundry and Drycleaning Services (RLDS)</h2>
        <br>
        <br>
        <br>
        <!--<p><b>Rosedell Laundry</b> is a subsidiary of Markhazy Frontline.
        Our services include:
         Dry Clean, Wash and Fold, Ironing, Stain Removal, Home/Office Pick-up and Delivery Services.</p><br> -->


 <?php

$ret=mysqli_query($con,"select * from tblpricelist");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
      
<h3 style="text-align: center;">Laundry Price(Per Unit/NGN)</h3>
       <table border="1" class="table table-bordered mg-b-0">
<tr>
    <th>Top Wear Laundry Price</th>
    <td><?php  echo $row['TopWear'];?></td>
  </tr>


   <tr>
    <th>Bottom Wear Laundry Price</th>
    <td><?php  echo $row['BottomWear'];?></td>
  </tr>
 

  <tr>
    <th>Kaftan Laundry Price</th>
    <td><?php  echo $row['Kaftan'];?></td>
  </tr>


  <tr>
    <th>Woolen Cloth Laundry Price</th>
    <td><?php  echo $row['Woolen'];?></td>
  </tr>
  
 
  

  
 


</table>

  



<?php } ?>
      </div>
      <!-- /.container-fluid -->

 
     


     <!-- Sticky Footer -->

      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © LMN Info-Hub 2020 || Rosedell Laundry and Drycleaning Services (RLDS)</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

</body>

</html>
