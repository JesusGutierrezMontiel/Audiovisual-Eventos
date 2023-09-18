<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Audio visual Eventos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="STYle.css">
    <link rel="stylesheet" href="splide-4.1.3/splide-4.1.3/dist/css/splide.min.css">
    <script src="splide-4.1.3/splide-4.1.3/dist/js/splide.min.js"></script>
</head>

<body>
    <?php include('agregar_imagenes.php'); ?>
    <form  method="post" enctype="multipart/form-data" id="formularioImagen">
        <label for="imagen">Selecciona una imagen:</label>
        <input type="file" name="imagen" id="imagen">
        <input type="text" name="titulo" placeholder="Título de a imagen">
        <input type="submit" value="Agregar Imagen" onclick="procesarFormulario()">
    </form>
</body>
</html>
