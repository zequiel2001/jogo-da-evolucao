<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_home.css">
    <title>Home</title>
 
</head>
<body>

    <div>
    
        <h1>Bem Vindo ao nosso jogo</h1>
        <form method="POST">
        <!-- <audio src="audio.ogg" type="audio/mpeg" autoplay></audio> -->
        <img id='stones_img' src="imgs/cien3.gif"  width="120">
            <p class="encerramento">
            Robert é um cientista e inventor, apaixonado pelo mundo virtual e também pela biologia, visando especialmente a evolução biológica dos seres vivos. Em um dos seus experimentos, Robert se encontra em um cataclismo diante de sua invenção mais bem trabalhada: uma máquina do tempo. Por um milésimo de segundo, sua máquina funciona e ele se encontra em um universo paralelo no qual ele chamou de Jogando a revolução. Esse cenário era o reflexo de toda a história de como os seres humanos chegaram aonde estão, e isso partia dês de o princípio até os dias atuais. Porém, Robert observou que atrás dele, havia um enorme asteroide que se aproximava rapidamente. Em um raciocínio lógico, ele percebeu que estava entre a vida e morte, e que para sobreviver, era necessário encarar o caminho de perguntas que ele encontrou logo na sua frente. 
            Robert será capaz de chegar até a linha de chegada e conseguir fugir do enorme asteroide?

            </p>
              
            <button class="link"><a href="login.php">Entrar no login</a></button>
            <button class="link"><a href="formulario.php">Cadastrar</a></button>
            <button class="link"><a href="placar.php">Placar</a></button>


        </form>
    </div>

    <script>
  function typeWriter(elemento) {
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = '';
    textoArray.forEach((letra, i) => {
      setTimeout(() => elemento.innerHTML += letra, 130 * i);
    });
  }



  function texto(elemento) {
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = '';
    textoArray.forEach((letra, i) => {
      setTimeout(() => elemento.innerHTML += letra, 30 * i);
    });
  }
  const text = document.querySelector('p');
  texto(text);


  const titulo = document.querySelector('h1');
  typeWriter(titulo);
</script>
</body>
</html>