PImage imgMouse;  // Variable para la imagen que se moverá con el mouse
float imgMouseX; // Posición x de la imagen
float imgMouseY; // Posición y de la imagen
boolean dragging; // Variable para controlar si se está arrastrando la imagen

// Función para configurar la imagen que se moverá mediante el mouse
void setupImagenMoverMouse(String rutaImagen, float imgMouseXInicial, float imgMouseYInicial) {
  imgMouse = loadImage(rutaImagen);  // Carga la imagen desde la ruta especificada
  imgMouse.resize(150, 150);
  imgMouseX = imgMouseXInicial*9; // Inicializa la posición x de la imagen
  imgMouseY = imgMouseYInicial*9; // Inicializa la posición y de la imagen
  dragging = false; // Inicializa la variable de arrastre
}

// Función que se debe llamar en el `draw()` de la pestaña principal para dibujar la imagen y manejar su movimiento
void drawImagenMoverMouse(){
  // Dibuja la imagen en su posición actual
  image(imgMouse, imgMouseX, imgMouseY);
}

// Esta función se llama cuando se presiona un botón del mouse
// Función que se llama cuando se presiona una tecla
