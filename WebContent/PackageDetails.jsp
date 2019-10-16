<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Package Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="Package.html">Package</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Package Details</h2>
                </div>
            </div>
            <div class="innerForm">
                <form action="MainServlet" method="post" value ="hidden">
                    ID: <input type="text" name="package_id"><br>
                    Name: <input type="text" name="package_name"><br>
                    Category: <input type="text" name="package_category"> <br>
                    Charging Type: <input type="text" name="package_charging_type"> <br>
                    Transmission Type: <input type="text" name="package_transmission_type"> <br>
                    Cost: <input type="text" name="package_cost"> <br>
                    Available From: <input type="text" name="package_available_from"> <br>
                    Available To: <input type="text" name="package_available_to"> <br>
                    Package Default: <input type="text" name="package_default"> <br>
                    Channel Id: <input type="text" name="channel_id"><br>
                           
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbPackage">
               </form>
            </div>
        </div>
    </div>
    <footer>
        <div class="credit">
            <h3>Team 1 &copy;</h3>
        </div>
    </footer>
</body>
</html>