<?php
error_reporting(0);
include('includes/config.php'); 
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>RJS Result Portal</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
            .data{
                margin-left:50px;
                margin-right: 50px;
            }
            .ntcb{
                position:relative;
                margin-right: 1000px;
                padding-bottom: 100px;
                margin-bottom: 87px;
            }
        </style>
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.php">RJS RESULT PORTAL</a>
                <br>
               

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link active" href="find-result.php">Students</a></li>
                        <li class="nav-item"><a class="nav-link active" href="admin-login.php">Admin</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header - set the background image for the header in the line below-->
        <center><h1>RJS RESULT SYSTEM</h1></center>
        <hr style="height: 3px; color:black">
        
    
        </header>
        <!-- Content section-->
      <div class="data"> <center> <h3>ABOUT RJS FGC</h3></center>
       <center><h6 contenteditable="false">A Prestigious institute of Karnataka ReddyJana Sangha First Grade College(KRJS FGC) was started in the year 1993 is one of the affiliated colleges in Bengaluru City University, accredited with 'B++' grade by NAAC, located at the hotspot of Koramangala, sprawling acres of land, almost uncontaminated by any kind of pollution, considerably adjacent to BDA Complex and well connected by city bus network from the different areas of the city.

It is well known organization which thrives for quality education since its beginning. This is the college with a distinctive academic profile blending into commitment to rural ethos and a modern spirit. The academic life on the campus is vibrant and exciting with seminars, special lectures and workshops throughout the year. The programs are designed to be learner friendly and cost effective.

Students gain experience at our college that underscores the harmony necessary between academic and co-curricular endeavours.</h6></center>
<center><h6>
 Students gain experience at our college that underscores the harmony necessary between academic and co-curricular endeavours.
 Our college theme is woven into an educational philosophy and curriculum intended to prepare students for a future that demands ethical integrity, creativity, self understanding and implication of science and technology.
 The college occupies a special rank in the field of catering the needs of students with multiple branches, nurturing the qualities and values as well ensuring friendly campus environment, which could be conducive to learning for them. It is a credit for the college that attracts students from all parts of the country and even NRIs as well foreign students in its process of admission.
 We profoundly state that this is the college which steers the students to comprehend and widen their knowledge in all perspectives with a practical approach in a congenial climate, which boosts morals at every step and replace the empty mind with an open view.</h6></center></div>


        <div class="ntcb">
            <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>Notice Board</h2>
                        <hr color="#000" />
                        <marquee direction="up"  onmouseover="this.stop();" onmouseout="this.start();">
                   <ul>
 <?php $sql = "SELECT * from tblnotice";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>                      
<li><a href="notice-details.php?nid=<?php echo htmlentities($result->id);?>" target="_blank"><?php echo htmlentities($result->noticeTitle);?></li>
<?php }} ?>

                   </ul>
               </marquee>

                    </div>
                </div>
            </div>
        </section>

        </div>

        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy;RJS FGC <?php echo date('M Y');?></p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
