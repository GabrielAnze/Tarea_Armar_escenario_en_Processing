//class setupImagenMoverRebote{
PImage img;  // Variable para la imagen
float imgX; // Posición x de la imagen
float imgY; // Posición y de la imagen (puede ser constante si no quieres que la imagen se mueva verticalmente)
float speed; // Velocidad de la imagen

void setupImagenMoverRebote(String rutaImagen, float imgYInicial, float velocidad) {
  img = loadImage("descargar.png");  // Carga la imagen desde la ruta especificada
  imgX = width / 2 - img.width / 2; // Inicializa la posición x de la imagen en el centro del lienzo
  imgY = imgYInicial; // Establece la posición y de la imagen según el parámetro dado
  speed = velocidad; // Establece la velocidad de la imagen según el parámetro dado
}

void drawImagenMoverRebote() {
  // Dibuja la imagen en su posición actual
  image(img, imgX, imgY);
  
  // Mueve la imagen en la dirección actual
  imgX += speed;
  
  // Verifica si la imagen ha alcanzado los bordes izquierdo o derecho
  if (imgX <= 0) {
    speed = abs(speed);  // Cambia la dirección de movimiento a la derecha
  } else if (imgX + img.width >= width) {
    speed = -abs(speed); // Cambia la dirección de movimiento a la izquierda
  }
}
