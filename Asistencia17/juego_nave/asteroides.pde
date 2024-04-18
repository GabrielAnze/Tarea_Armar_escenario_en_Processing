class Asteroide{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Asteroide(){
    imagen = loadImage("https://c0.klipartz.com/pngpicture/924/882/sticker-png-funko-pop-games-borderlands-clap-trap-action-figure-funko-pop-games-borderlands-clap-trap-action-figure-borderlands-black-claptrap-exc-pop-vinyl-figure-action-toy-figures-others-game-toy-technology-robot-action.png");
  }
  
  public Asteroide(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("https://c0.klipartz.com/pngpicture/924/882/sticker-png-funko-pop-games-borderlands-clap-trap-action-figure-funko-pop-games-borderlands-clap-trap-action-figure-borderlands-black-claptrap-exc-pop-vinyl-figure-action-toy-figures-others-game-toy-technology-robot-action.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
    }
    
  }
}
