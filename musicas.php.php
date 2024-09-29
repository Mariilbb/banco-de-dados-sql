<?php
$servername = "localhost";
$username = "root"; 
$password = "";     
$dbname = "banco_prog_web";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Processa o formulário se for enviado via POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Coletar dados do formulário HTML
    $titulo = $_POST['titulo'];
    $duracao = $_POST['duracao'];
    $compositor = $_POST['compositor'];
    $album = $_POST['album'];

    // Inserir dados na tabela 'musica'
    $sql = "INSERT INTO musica (titulo, duracao, compositor, album) VALUES ('$titulo', '$duracao', '$compositor', '$album')";

    // Executa a consulta e verifica se houve sucesso
    if ($conn->query($sql) === TRUE) {
        $message = "Nova música adicionada com sucesso!! 🎉🎉";
    } else {
        $message = "Erro: " . $sql . "<br>" . $conn->error;
    }
}

// Fechar a conexão
$conn->close();
?>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    <link href="https://fonts.googleapis.com/css2?family=Jersey+10&display=swap" rel="stylesheet">
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #b2f0e4;
            margin: 0;
            text-align: center;
        }

        .message {
            font-family: 'Jersey 10', sans-serif;
            font-size: 36px;
            color: #ff6f6f;
            margin-bottom: 20px;
        }

        .container {
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            width: 100%;
            max-width: 450px;
            border: 2px solid #000000;
            text-align: center;
        }

        img {
            width: 100%; 
            max-width: 450px; 
            border-radius: 10px;
            margin: 0 auto; 
        }
    </style>
</head>
<body>

<div class="container">
    <?php if (isset($message)): ?>
        <div class="message"><?php echo $message; ?></div>
    <?php endif; ?>
    <img src="https://c.tenor.com/9TikbAf_2E4AAAAd/ringspurry-tulla-luana.gif">
</div>

</body>
</html>

