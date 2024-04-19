//class setupImagenMoverRebote{
// Variables globales para la imagen, posición y velocidad
PImage img2;
float imgX;
float imgY;
float speed;

// Configura la imagen para mover y rebotar
void setupImagenMoverRebote(String rutaRebote, float imgYalto, float velocidad) {
    // Carga la imagen desde la ruta especificada
    img2 = loadImage(rutaRebote);
    img2.resize(250, 250);
    // Inicializa la posición x de la imagen en el centro del lienzo
    imgX = width / 2 - img2.width / 2;
    
    // Establece la posición y de la imagen según el parámetro dado
    imgY = imgYalto;
    
    // Establece la velocidad de la imagen según el parámetro dado
    speed = velocidad;
}

// Dibuja y mueve la imagen
void drawImagenMoverRebote() {
    // Dibuja la imagen en su posición actual
    image(img2, imgX, -50);
    
    // Mueve la imagen en la dirección actual
    imgX += speed*4;
    
    // Verifica si la imagen ha alcanzado los bordes izquierdo o derecho
    if (imgX <= -50) {
        // La imagen llegó al borde izquierdo, cambia la dirección de movimiento a la derecha
        imgX = -50;
        speed = abs(speed);
    } else if (imgX + img2.width >= 900) {
        // La imagen llegó al borde derecho, cambia la dirección de movimiento a la izquierda
        imgX = width - img2.width;
        speed = -abs(speed);
    }
}
