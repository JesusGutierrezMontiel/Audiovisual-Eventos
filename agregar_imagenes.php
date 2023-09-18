
<?php
require("conexion.php");
    
    // Función para obtener las imágenes de la base de datos y mostrarlas
    function mostrarImagenes() {
        global $conn; // Accedemos a la conexión global
    
        // Consulta para obtener las imágenes de la base de datos
        $sql = "SELECT * FROM cat_imagenes";
        $result = $conn->query($sql);
    
        if ($result->num_rows > 0) {
            // Genera el marcado HTML dinámico para el carrusel de imágenes
            while ($row = $result->fetch_assoc()) {
                echo '<li class="splide__slide">';
                echo '<img src="' . $row['src'] . '" alt="' . $row['titulo'] . '">';
                echo '</li>';
            }
        } else {
            echo "No se encontraron imágenes en la base de datos.";
        }
    }
    
    // Función para procesar el formulario de carga de imágenes
    

    
    // Función para procesar el formulario
    function procesarFormulario() {
        global $conn;
    
        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            // Verifica si se ha enviado un archivo
            if ($_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
                // Obtiene la información del archivo cargado
                $nombreArchivo = $_FILES['imagen']['name'];
                $rutaTemporal = $_FILES['imagen']['tmp_name'];
    
                // Obtener la extensión del archivo
                $extension = strtolower(pathinfo($nombreArchivo, PATHINFO_EXTENSION));
    
                // Verificar si la extensión es válida
                $extensionesValidas = array("jpg", "jpeg", "png");
                if (in_array($extension, $extensionesValidas)) {
                    $rutaDestino = 'Imagenes/' . $nombreArchivo;
    
                    // Verifica si el directorio 'Imagenes/' existe y crea si es necesario
                    if (!file_exists('Imagenes/')) {
                        mkdir('Imagenes/', 0777, true);
                    }
    
                    // Mueve el archivo cargado a la ubicación deseada
                    if (move_uploaded_file($rutaTemporal, $rutaDestino)) {
                        $titulo = $_POST['titulo'];
                        $folder = 'Imagenes/';
    
                        $sql = "INSERT INTO cat_imagenes (titulo, folder, src, creacion) VALUES (?, ?, ?, sysdate())";
                        $stmt = $conn->prepare($sql);
                        $stmt->bind_param("sss", $titulo, $folder, $rutaDestino);
    
                        if ($stmt->execute()) {
                            echo "La imagen se ha subido e insertado en la base de datos correctamente.";
                        } else {
                            echo "Error al insertar la imagen en la base de datos: " . $stmt->error;
                        }
    
                        // Cierra la declaración y la conexión
                        $stmt->close();
                    } else {
                        echo 'Error al mover el archivo.';
                    }
                } else {
                    echo 'La extensión del archivo no es válida. Se permiten archivos .jpg, .jpeg y .png.';
                }
            } else {
                echo 'Error al cargar el archivo.';
            }
        }
    }
    
        // Llama a la función para procesar el formulario
procesarFormulario();

    ?>