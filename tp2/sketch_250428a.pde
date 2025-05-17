//IMAGENES
PImage imagen1, imagen2, imagen3;

//FUENTE DE TEXTO
PFont miTexto;

//TEXTOS
String Texto1, Texto2, Texto3;

//POSICIONES DEL TEXTO
int Posx = 500 ;
int PosY = 20;

// TAMAÑO DEL TEXTO
float TamText = 0;

// MEDIDAS DEL BOTON
int RectposX = 320;
int RectposY = 240;
int RectTam = 100;

void setup() {
  size (640, 480);

//FUENTE DE TEXTO
miTexto = loadFont ("Arial-BoldItalicMT-48.vlw");

// ESCRITO DEL TEXTO
  Texto1 =("Initial D es la historia de como el joven de 17 años Takumi Fujiwara, compite en carreras callejeras nocturnas en Japón");
  Texto2 =("Mientras que ayuda a su papá\n con su negocio de tofu,\n y cursa el colegio secundario con sus amigos");
  Texto3 =("Mientras que compite aprende lecciones de manejo\n y de vida que lo ayudan a ser un mejor corredor\n y una mejor persona");


// IMAGENES
  imagen1 =loadImage ("InitialDImag3.jpeg");
  imagen2 =loadImage ("InitialDImag1.jpeg");
  imagen3 =loadImage ("InitialDImag2.jpeg");
}
void draw() {

 //FUENTE DE TEXTO
  textFont (miTexto);
  
  //FrameRate y tamaño del texto
  frameRate(30);
  textSize(20);


// PANTALLAS
  if (frameCount == 1) {
    Posx = 500;
  }
  if (frameCount == 300) {
    TamText = 0;
  }
  if (frameCount == 550) {
    PosY = 20;
  } else if (frameCount < 300) {
    image(imagen1, 0, 0, 640, 480);
    fill (255, 0, 0);
    text (Texto1, Posx, 478);
    Posx = Posx -5;
  } else if (frameCount > 300  && frameCount < 550) {
    image (imagen2, 0, 0, 640, 480);
    fill (255, 0, 0);
    frameRate (20);
    textSize (TamText);
    text (Texto2, 120, 110, 440, 400);
    TamText = TamText + 0.3;
  } else if (frameCount > 550 && frameCount < 700) {
    image (imagen3, 0, 0, 640, 480);
    fill (255, 0, 0);
    frameRate (20);
    text (Texto3, 20, PosY);
    PosY = PosY + 5;
  }


//BOTON (COLOR Y FORMA)
  if (mouseX > RectposX && mouseX < RectposX + RectTam && mouseY > RectposY && mouseY < RectposY + RectTam) {
    fill (255, 0, 0);
  } else {
    fill (255);
  }

  if (frameCount > 700) {
    background (200);
    rect (RectposX, RectposY, RectTam, RectTam);
  }
}

//BOTON (FUNCIONES)
void mouseClicked() {

  if (mouseX > RectposX && mouseX < RectposX + RectTam && mouseY > RectposY && mouseY < RectposY + RectTam && frameCount > 700) {
    frameCount = 0;
  }
}
