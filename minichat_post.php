<!DOCTYPE html>
<html>
	<head>
		<title>minchat_post</title>
		<meta charset="utf-8">
	</head>
	<body>
		<?php
		$bdd = new PDO('mysql:host=localhost;dbname=test', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$requete = $bdd->prepare('INSERT INTO chat(pseudo, message) VALUES(?, ?)');
		$requete->execute(array($_POST['pseudo'], $_POST['message']));
		header('Location: minichat.php');
		?>
	</body>
</html>