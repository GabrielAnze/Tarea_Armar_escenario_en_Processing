void setup() {
    size(800, 600);
    
    // Configura los elementos de la pestaña ImagenMoverRebote
    setupImagenMoverRebote("descargar.png", 300, 2.0);

    // Configura los elementos de la pestaña ImagenMoverMouse
    setupImagenMoverMouse("star.png", 100, 100);
    
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
