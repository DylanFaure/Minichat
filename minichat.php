<!DOCTYPE html>
<html>
	<head>
		<title>minichat</title>
		<meta charset="utf-8">
	</head>
	<body>
		<form action="minichat_post.php" method="POST">
			<p><label>Pseudo : <input type="text" name="pseudo" /></label></p>
			<p><label>Message : <input type="text" name="message" /></label></p>
			<p><input type="submit" /></p><br />
			<?php
			$bdd = new PDO('mysql:host=localhost;dbname=test', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
			$bdd->exec('SET NAMES utf8');
			$reponse = $bdd->query('SELECT pseudo, message FROM chat ORDER BY id DESC LIMIT 10');
			while ($donnees = $reponse->fetch())
			{
				echo '<p><strong>' . htmlspecialchars($donnees['pseudo']) . '</strong> : ' . htmlspecialchars($donnees['message']) . '</p>';
			}
			?>
		</form>
	</body>
</html>