<?php
    session_start();

    if(isset($_POST['submit']) && !empty($_POST['jogador']) && !empty($_POST['senha']))
    {
        // Acessa
        include_once('config.php');
        $jogador = $_POST['jogador'];
        $senha = $_POST['senha'];
        $senha_dscript = base64_encode($senha);
        $ativo = "S";
        $logado = "online";
        $sql = "SELECT * FROM evolucao_jogador WHERE jogador = '$jogador' AND senha = '$senha_dscript'";

        $result = $conexao->query($sql);
        $linha = $result->fetch_assoc();

        if(mysqli_num_rows($result) < 1)
        {
            echo "<script>
                    window.alert('Este jogador não está cadastrado em nosso banco de dados');
                    window.location.href='login.php';
                    </script>";
            // unset($_SESSION['jogador']);
            // unset($_SESSION['senha']);
            
                    
        }
        else
        {   

            $teste = "SELECT * FROM evolucao_jogo;";
            $result5 = $conexao->query($teste);
            $ativos = $result5->num_rows;
            echo $ativos;

                if($ativos <= 2) {
                    $partida_sorteadaA = 1;
                    $jogadores = "INSERT INTO evolucao_jogo (partida, jogador_id, pontuacao) VALUES (".$partida_sorteadaA.",".$linha["id"].", 0)";
                    $result6 = $conexao->query($jogadores);
                    $_SESSION['ranking'] = $partida_sorteadaA;

                
                }elseif($ativos > 2 or $ativos <= 4 ) {
                    $partida_sorteadaB = 2;
                    $jogadores = "INSERT INTO evolucao_jogo (partida, jogador_id, pontuacao) VALUES (".$partida_sorteadaB.",".$linha["id"].", 0)";
                    $result6 = $conexao->query($jogadores);
                    $_SESSION['ranking'] = $partida_sorteadaB;

                
                }elseif ($ativos > 4 or $ativos <= 6) {
                    $partida_sorteadaC = 3;
                    $jogadores = "INSERT INTO evolucao_jogo (partida, jogador_id, pontuacao) VALUES (".$partida_sorteadaC.",".$linha["id"].", 0)";
                    $result6 = $conexao->query($jogadores);
                    $_SESSION['ranking'] = $partida_sorteadaC;

                }
                else{
                    header('Location: espera_jogo.php');
                }
            $status = "UPDATE evolucao_jogador SET ativo = '$ativo', logado = '$logado' WHERE id = ".$linha["id"].";";    
            $result2 = $conexao->query($status);

            $login_jogador = date('d/m/Y h:i');        
            $login = "insert into evolucao_historico_login (data_hora_login, data_hora_logout, jogador_id) values ('".$login_jogador."', '0', ".$linha["id"].");";
            $login_bd = $conexao->query($login);
            
            unset($_SESSION['prova']);
            $_SESSION['jogador'] = $jogador;
            $_SESSION['senha'] = $senha;
            $_SESSION['pk_jogador'] = $linha["id"];
            header('Location: jogo.php');
        }
    }
    else
    {
        // Não acessa
        header('Location: login.php');
    }
?>