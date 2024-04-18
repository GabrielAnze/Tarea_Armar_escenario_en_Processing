class Shooter{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  // CONSTRUCTOR 
  public Shooter(){
    imagen = loadImage("https://c0.klipartz.com/pngpicture/924/882/sticker-png-funko-pop-games-borderlands-clap-trap-action-figure-funko-pop-games-borderlands-clap-trap-action-figure-borderlands-black-claptrap-exc-pop-vinyl-figure-action-toy-figures-others-game-toy-technology-robot-action.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  /**
  * Mueve la posicon hacia izquierda o derecha según lo 
  * que se indique en el atributo velocidad
  * direccion (0:izquierda; 1=derecha; 2 = arriba, 3= abajo)
  */
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
    }
    if(direccion==2){
      this.posicion.y-=this.velocidad.y;
    }
    if(direccion==3){
      this.posicion.y+=this.velocidad.y;
    }
    
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
