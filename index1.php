<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- downloaded fom https://css-tricks.com/building-a-simple-quiz/ -->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>PHP Quiz</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

	<div id="page-wrap">

		<h1>VPRASANJA</h1>
		
		<form action="grade.php" method="post" id="quiz">
		
            <ol>
            
                <li>
                
                    <h3> Vprasanje 1 </h3>
                    
                    <div class="a">
                        <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                        <!-- <label for="question-1-answers-A"> 1 </label> -->
                        <label> 1 </label>

                    </div>
                    
                    <div class="b">
                        <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                        <!-- <label for="question-1-answers-B"> 2 </label> -->
                        <label> 2 </label>

                    </div>
                    
                    <div class="c">
                        <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                        <!-- <label for="question-1-answers-C"> 3 </label> -->
                        <label> 3 </label>

                    </div>
                    
                    <div class="d">
                        <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                        <!-- <label for="question-1-answers-D"> 4 </label> -->
                        <label> 4 </label>

                    </div>

                     <div class="e">
                        <input type="radio" name="question-1-answers" id="question-1-answers-E" value="E" />
                        <!-- <label for="question-1-answers-E"> 4 </label> -->
                        <label> 5 </label>

                    </div>
                
                </li>
                
                
             
            
            </ol>
            
            <input type="submit" value="Oddaj vprasalnik" />
		
		</form>
	
	</div>
	
	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("UA-68528-29");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script>

</body>

</html>