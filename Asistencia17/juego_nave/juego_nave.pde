void setup() {
    size(800, 600);
    
    // Configura los elementos de la pestaña ImagenMoverRebote
    setupImagenMoverRebote("sun.png", 300, 2.0);

    // Configura los elementos de la pestaña ImagenMoverMouse
    setupImagenMoverMouse("star.png", 50, 50);
    
    // Configura el fondo de la pestaña FondoLienzo
   cargarFondo("park.jpg");
}
void draw() {
    // Dibuja el fondo
    dibujarFondo();
    
    // Dibuja y maneja el movimiento de la imagen en ImagenMoverRebote
    drawImagenMoverRebote();
    
    // Dibuja y maneja el movimiento de la imagen con el mouse en ImagenMoverMouse
    drawImagenMoverMouse();
    
    // Aquí puedes agregar más código para otros elementos del lienzo si es necesario.
}
// Función que se llama cuando se presiona una tecla
void keyPressed() {
    // Si la tecla presionada es "A", mueve la imagen a la izquierda
    if (key == 'a' || key == 'A') {
        imgMouseX -= 10;
    }
    // Si la tecla presionada es "S", mueve la imagen hacia abajo
    if (key == 's' || key == 'S') {
        imgMouseY += 10;
    }
    // Si la tecla presionada es "D", mueve la imagen a la derecha
    if (key == 'd' || key == 'D') {
        imgMouseX += 10;
    }
    // Si la tecla presionada es "W", mueve la imagen hacia arriba
    if (key == 'w' || key == 'W') {
        imgMouseY -= 10;
    }
}
