<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl">
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Portal</title>
<script src='java-script.js'></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel='stylesheet' href='css-style.css' />
<style>
	@import url('https://fonts.googleapis.com/css?family=Allura|Cookie|Great+Vibes|Kaushan+Script|Lobster+Two|Montez|Parisienne|Slabo+27px|Merriweather|Montserrat|Raleway|Roboto+Condensed');
</style>
</head>

<body>

<!--poczatek menu-->
<div id="naw-gor">
	<div class="naw-li">
    <div class="naw-link">
    	<a href="main.php" title="główna">Główna</a>
        <a href="about.php" title="o nas">O nas</a>
        <a href="kontakt.php" title="kontakt">Kontakt</a>
        <?php if (isset($_SESSION['admin']) && $_SESSION['admin']) { ?>
		<a href="log.php" title="panel">Panel administratora</a>
   		<?php } else if (isset($_SESSION['admin']) && !$_SESSION['admin']) { ?>
		<a href="log.php" title="panel">Panel użytkownika</a>                           
        <?php } else { ?>
		<a href="log.php" title="zaloguj">Zaloguj się</a>
        <?php } ?>
    </div>
    </div>
</div>

<!--- Menu boczne ---->
<div id="menu-bok">
	<div class="menu-naz">Gramatyka</div>
    <div class="menu-link">
    	<a href="czasy.php" title="czasy">Czasy</a>
        <a href="czasowniki.php" title="czasowniki">Czasowniki</a>
        <a href="rzeczowniki.php" title="rzeczowniki">Rzeczowniki</a>
        <a href="czasmod.php" title="czasowniki modalne">Czasowniki modalne</a>
    </div>
    <div class="menu-naz">Słownictwo</div>
    <div class="menu-link">
    	<a href="owoce.php" title="owoce">Owoce</a>
        <a href="warzywa.php" title="warzywa">Warzywa</a>
        <a href="miejsca.php" title="miejsca">miejsca</a>
        <a href="pojazdy.php" title="pojazdy">pojazdy</a>
        <a href="praca.php" title="praca">praca</a>
    </div>
    <div class="menu-naz">Ćwiczenia</div>
    <div class="menu-link">
    	<a href="czasy.php" title="czasy">czasy</a>
        <a href="czemow.php" title="części mowy">części mowy</a>
        <a href="slownictwo.php" title="słownictwo">słownictwo</a>
    </div>
</div>

<!--koniec menu-->

<!----blog----->
	<div id='blog'>
        <div class="post">
        <!--- Log in ---->
        <form action="login.php" method="post">
            <div id='login'>
            <?php if (isset($_SESSION['admin']) && $_SESSION['admin']) { ?>
				<div class="tyt">Panel administratora</div>
            <div class="form-group">
			Cześć <?php echo $_SESSION['nick'] ; ?>
            <ul class="list-group">
            <?php      $myConnection= mysqli_connect("localhost","root","", "learnenglish") or die ("could not connect to mysql"); 
			$guery=mysqli_query($myConnection, "set names 'utf8'");
			$sqlCommand="SELECT * FROM zaj WHERE IDuser='".$_SESSION['id']."'";
			$zaj = array();
			$query=mysqli_query($myConnection, $sqlCommand);        
			while($row = mysqli_fetch_array($query)){
				$zaj[$row['IDszkol']] = true;
			}			
			
			$sqlCommand="SELECT * FROM szkolenia";
			$query=mysqli_query($myConnection, $sqlCommand);        
			while($row = mysqli_fetch_array($query)){ 
				$buttons = '<a href="szkolenia.php?id='.$row['IDszkol'].'" class="btn btn-xs btn-default" target="_blank">Zarządzaj</a> ';
			?>
					<li class="list-group-item"><?php echo $row['nazwaSz']; ?> <div class="pull-right"><?php echo $buttons; ?></div></li>
                    <?php } ?>
                    </ul>
            <br/><?php $dzien = date("d");
				$miesiac = date("m");
				$rok = date("Y");
				switch($miesiac){
					case '01':$miesiac='stycznia';break;
					case '02':$miesiac='lutego';break;
					case '03':$miesiac='marca';break;
					case '04':$miesiac='kwietnia';break;
					case '05':$miesiac='maja';break;
					case '06':$miesiac='czerwca';break;
					case '07':$miesiac='lipca';break;
					case '08':$miesiac='sierpnia';break;
					case '09':$miesiac='września';break;
					case '10':$miesiac='października';break;
					case '11':$miesiac='listopada';break;
					case '12':$miesiac='grudnia';break;
					default:$miesiac='niezidentyfikowany';break;}
					print "Dziś jest <strong>$dzien $miesiac $rok</strong>";
					?>
            <br/><a href='logout.php' class='btn btn-default'>Wyloguj</a>
			<?php } ?>
           
            <?php 
			if ((isset($_SESSION['admin']) && !$_SESSION['admin']) && isset($_SESSION['login'])){?>
            <div class="tyt">Panel użytkownika</div>
            <div class="form-group">
			Cześć <?php echo $_SESSION['login'] ; ?>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Dostępne szkolenia
                    </a>
                  </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                  <ul class="list-group">
            <?php      $myConnection= mysqli_connect("localhost","root","", "szkolenia") or die ("could not connect to mysql"); 
			$guery=mysqli_query($myConnection, "set names 'utf8'");
			$sqlCommand="SELECT * FROM zaj WHERE IDuser='".$_SESSION['id']."'";
			$zaj = array();
			$query=mysqli_query($myConnection, $sqlCommand);        
			while($row = mysqli_fetch_array($query)){
				$zaj[$row['IDszkol']] = true;
			}			
			
			$sqlCommand="SELECT * FROM szkolenia";
			$query=mysqli_query($myConnection, $sqlCommand);        
			while($row = mysqli_fetch_array($query)){ 
				$buttons = '<a href="szkolenia.php?id='.$row['IDszkol'].'" class="btn btn-xs btn-default" target="_blank">Więcej informacji</a> ';
				if (isset($zaj[$row['IDszkol']]))
					$buttons .= '<a href="toggleZaj.php?id='.$row['IDszkol'].'" class="btn btn-xs btn-danger">Wypisz się</a> ';
				else
					$buttons .= '<a href="toggleZaj.php?id='.$row['IDszkol'].'" class="btn btn-xs btn-success">Zapisz się</a> ';
			?>
					<li class="list-group-item"><?php echo $row['nazwaSz']; ?> <div class="pull-right"><?php echo $buttons; ?></div></li>
			<?php  } ?>
                    </ul>
                </div>
              </div>
              </div>
            <br/><?php $dzien = date("d");
				$miesiac = date("m");
				$rok = date("Y");
				switch($miesiac){
					case '01':$miesiac='stycznia';break;
					case '02':$miesiac='lutego';break;
					case '03':$miesiac='marca';break;
					case '04':$miesiac='kwietnia';break;
					case '05':$miesiac='maja';break;
					case '06':$miesiac='czerwca';break;
					case '07':$miesiac='lipca';break;
					case '08':$miesiac='sierpnia';break;
					case '09':$miesiac='września';break;
					case '10':$miesiac='października';break;
					case '11':$miesiac='listopada';break;
					case '12':$miesiac='grudnia';break;
					default:$miesiac='niezidentyfikowany';break;}
					print "Dziś jest <strong>$dzien $miesiac $rok</strong>";
					?> 
            <br/><a href='logout.php' class='btn btn-default'>Wyloguj</a>
            </div>
			<?php } else if (!isset($_SESSION['admin'])) {?>
            <div class='tyt'>Logowanie</div>
            <?php if (isset($_SESSION['register_success'])) { ?>
              <div class="form-group">
                <label>Konto zostało utworzone, możesz się teraz zalogować</label>
              </div>
             <?php } ?>
            <?php if (isset($_SESSION['error'])) { ?>
              <div class="form-group">
                <label>Błąd logowania</label>
              </div>
             <?php } ?>
              <div class="form-group">
                <label for="exampleInputLogin1">Login</label>
                <input type="text" class="form-control" id="exampleInputLogin1" placeholder="Login" name="login">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
              </div>
              <div class="form-group">
              <label>
              <button type="submit" class="btn btn-default" name="submit">Zaloguj</button>
              </label>
              <br />Nie posiadasz konta?
              <br /><label>
              <a href="register.php" class="btn btn-default">ZAREJESTRUJ SIĘ</a>
              </label>
              </div>
              <?php }?>
              </div>
            </form>
        
            <!---<div class="post-image"><img src='img/main.png' /></div>
            <div class="post-tit">Zacznij naukę języka angielskiego z nami</div>
            <div class="post-tre">Dołącz do grona uczących się osób i zadbaj o swoją przyszłość. Nasz portal oferuje naukę języka angielskiego na różnych poziomach zaawansowania. Każdy znajdzie tu przez to coś dla siebie.
            Jeśli jesteś dopiero początkującą osobą, zacznij od sekcji <i>Słownictwo</i>, gdzie znajdziesz różnego rodzaju słówka.
            Jeśli miałeś już doczynienia z językiem angielskim, to oprócz powyższej sekcji możesz rozpocząć przygodę z sekcją <i>Gramatyka</i>, gdzie znajdziesz informację o czasach, częściach mowy oraz innych ważnych aspektach nauki tego języka.
            Jeśli czujesz, że poznałeś język angielski wystarczająco dobrze, zajrzyj koniecznie do sekcji <i>Ćwiczenia</i>. To tam będziesz mógł przećwiczyć zdobytą już wiedzę oraz sprawdzić swoje umiejętności.</div>
            <div class="post-podpis"><b>Dołącz do nas już dziś</b></div>  --->
        </div>
    </div>
</body>
</html>
<?php
unset($_SESSION['register_success']);
unset($_SESSION['error']);
?>