PImage imgMouse;  // Variable para la imagen que se moverá con el mouse
float imgMouseX; // Posición x de la imagen
float imgMouseY; // Posición y de la imagen
boolean dragging; // Variable para controlar si se está arrastrando la imagen

// Función para configurar la imagen que se moverá mediante el mouse
void setupImagenMoverMouse(String rutaImagen, float imgMouseXInicial, float imgMouseYInicial) {
  imgMouse = loadImage("star.png");  // Carga la imagen desde la ruta especificada
  imgMouseX = imgMouseXInicial; // Inicializa la posición x de la imagen
  imgMouseY = imgMouseYInicial; // Inicializa la posición y de la imagen
  dragging = false; // Inicializa la variable de arrastre
}

// Función que se debe llamar en el `draw()` de la pestaña principal para dibujar la imagen y manejar su movimiento
void drawImagenMoverMouse() {
  // Dibuja la imagen en su posición actual
  image(imgMouse, imgMouseX, imgMouseY);
}

// Esta función se llama cuando se presiona un botón del mouse
void mousePressedImagenMoverMouse() {
  // Verifica si el clic se hizo dentro de los límites de la imagen
  if (mouseX > imgMouseX && mouseX < imgMouseX + imgMouse.width && mouseY > imgMouseY && mouseY < imgMouseY + imgMouse.height) {
    dragging = true;  // Inicia el arrastre de la imagen
  }
}

// Esta función se llama cuando se suelta un botón del mouse
void mouseReleasedImagenMoverMouse() {
  dragging = false;  // Finaliza el arrastre de la imagen
}

// Esta función se llama cuando el mouse se mueve con un botón presionado
void mouseDraggedImagenMoverMouse() {
  // Si estamos arrastrando la imagen, actualizamos su posición
  if (dragging) {
    imgMouseX = mouseX - imgMouse.width / 2;
    imgMouseY = mouseY - imgMouse.height / 2;
  }
}
