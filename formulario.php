<?php
    if(isset($_POST['submit']))
    {
        include_once('config.php');
        $jogador = $_POST['jogador'];
        $senha = $_POST['senha'];
        $sql = "SELECT * FROM jogador_evolucao WHERE jogador = '$jogador'";

        $consulta1 = $conexao->query($sql);
        

        if(mysqli_num_rows($consulta1) >= 1){
            echo "<script>
                    alert('O jogador que você está tentando cadastrar já exite em noso sistema! Tente Novamente');
                  </script>";
        }else{
            $senha_cript = base64_encode($senha);
            $result = mysqli_query($conexao, "INSERT INTO evolucao_jogador(jogador, senha) VALUES ('$jogador', '$senha_cript');");
            header('Location: login.php');
        }
    }

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_formulario.css">
    <title>Cadastro de jogador(a)</title>
</head>
<body>
    <div class="box">
        <form action="formulario.php" method="POST">
            <fieldset>
                <legend><b>Cadastro do Jogador</b></legend>
                <br>
                <div class="inputBox">
                    <input type="text" name="jogador" id="jogador" class="inputUser" required>
                    <label for="nome" class="labelInput">Nome do Jogador:</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="password" name="senha" id="senha" class="inputUser" required>
                    <label for="senha" class="labelInput">Senha</label>
                </div>
                <br><br>
                <input type="submit" name="submit" id="submit">
                <p class="link"><a href="login.php">Voltar para o Login</a></p>
            </fieldset>
        </form>
    </div>
</body>
</html>