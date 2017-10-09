<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*,a_JDBC.jsp.*,JDBC.jsp.*"%>

<head>

<script type="text/javascript" src="dashboard/vendor/jquery/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#premium-payment-details").click(function() {
			$('#amain').load('agent_PolicyPayment.jsp');
			$('.highlight').removeClass('active');
			$('#aPolicyPayment').addClass('active');
		});

		$("#my-customers").click(function() {
			$('#amain').load('myCustomers.jsp');
			$('.highlight').removeClass('active');
			$('#myCustomers').addClass('active');
		});

		$("#new-customer").click(function() {
			$('#amain').load('addCustomers.jsp');
			$('.highlight').removeClass('active');
			$('#addCustomers').addClass('active');
		});

		$("#plan-details").click(function() {
			$('#amain').load('allPlans.jsp');
			$('.highlight').removeClass('active');
			$('#allPlans').addClass('active');
		});

	});
</script>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="">
<meta name="author" content="">
<title>LIC</title>

<!-- Bootstrap core CSS -->
<link href="dashboard/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="dashboard/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="dashboard/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="dashboard/css/sb-admin.css" rel="stylesheet">


</head>

<body>
	<div class="row">
		<div class="col-xl-6 col-sm-6 mb-3">
			<div class="card text-white bg-primary o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fa fa-fw fa-server"></i>
					</div>
					<div class="mr-5" style="font-size: 1.5em">My Customers</div>
				</div>
				<a href="#" class="card-footer text-white clearfix small z-1"> <span
					id="my-customers" class="float-left" style="font-size: 1.2em">View
						Details</span> <span class="float-right"> <i
						class="fa fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-6 col-sm-6 mb-3" style="display: block;">
			<div class="card text-white bg-warning o-hidden h-100";">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fa fa-fw fa-money"></i>
					</div>
					<div class="mr-5" style="font-size: 1.5em">Premium Payment</div>
				</div>
				<a href="#" class="card-footer text-white clearfix small z-1"> <span
					id="premium-payment-details" class="float-left"
					style="font-size: 1.2em">View Details</span> <span
					class="float-right"> <i class="fa fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-6 col-sm-6 mb-3">
			<div class="card text-white bg-success o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fa fa-fw fa-address-card-o"></i>
					</div>
					<div class="mr-5" style="font-size: 1.5em">Add New Customer</div>
				</div>
				<a href="#" class="card-footer text-white clearfix small z-1"> <span
					id="new-customer" class="float-left" style="font-size: 1.2em">View
						Details</span> <span class="float-right"> <i
						class="fa fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-6 col-sm-6 mb-3">
			<div class="card text-white bg-danger o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fa fa-fw fa-newspaper-o"></i>
					</div>
					<div class="mr-5" style="font-size: 1.5em">All plans by LIC!</div>
				</div>
				<a href="#" class="card-footer text-white clearfix small z-1"> <span
					id="plan-details" class="float-left" style="font-size: 1.2em">View
						Details</span> <span class="float-right"> <i
						class="fa fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
	</div>

	


</body>

</html>