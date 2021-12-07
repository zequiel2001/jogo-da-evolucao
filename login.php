<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_login.css">
    <title>Tela de login</title>
    <style>
        
    </style>
</head>
<body>
    <div class="form">
        <h1>Entrar no Jogo</h1>
        <form action="testLogin.php" method="POST">
            <input type="text" name="jogador" placeholder="Nome do Jogador">
            <br><br>
            <input type="password" name="senha" placeholder="Senha do Jogador">
            <br><br>
            <input class="inputSubmit" type="submit" name="submit" value="Enviar">
            <p class="link"><a href="formulario.php">Cadastre-se</a></p>
            <p class="link"><a href="home.php">Voltar para Home</a></p>
        </form>
    </div>
</body>
</html>