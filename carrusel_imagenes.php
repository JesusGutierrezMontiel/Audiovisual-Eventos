<?php
require("agregar_imagenes.php"); // Reemplaza con la ruta real de tu archivo común
?>
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
   

    <div class="container">
        <section id="main-carousel" class="splide">
            <div class="splide__track">
                <ul class="splide__list">
                    <?php mostrarImagenes(); ?>
                </ul>
            </div>
        </section>
        <section id="thumbnail-carousel" class="splide">
            <div class="splide__track">
                <ul class="splide__list">
                    <?php mostrarImagenes(); ?>
                </ul>
            </div>
        </section>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var main = new Splide('#main-carousel', {
                type       : 'fade',
                heightRatio: 0.5,
                pagination : false,
                arrows     : false,
                cover      : true,
            });

            var thumbnails = new Splide('#thumbnail-carousel', {
                rewind          : true,
                fixedWidth      : 160,
                fixedHeight     : 110,
                isNavigation    : true,
                gap             : 10,
                focus           : 'center',
                pagination      : false,
                cover           : true,
                dragMinThreshold: {
                    mouse:10,
                    touch: 20,
                },
                breakpoints : {
                    640: {
                        fixedWidth  : 96,
                        fixedHeight : 68,
                    },
                },
            });

            main.sync(thumbnails);
            main.mount();
            thumbnails.mount();
        });
    </script>
</body>
</html>
