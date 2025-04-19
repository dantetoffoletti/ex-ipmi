PImage miImagen;

void setup(){
  size(800,400);
miImagen =loadImage("Sphinx-Tete.jpg");
}

void draw(){
 //piramide
 background(#9B804B);
 
 image (miImagen,0,0,400,400);
  
  //linea media
 // line (400,0,400,400);
  
 fill(#A9E8E6);
  triangle (400,0,400,400,580,0);
  

  //cabeza
  fill (#FFB908);
  rectMode (CENTER);
  rect (600,150,100,175);
  
   // cuello
  
  rect (600,318.75,100,162.5);
  
 

  beginShape ();
  vertex(550,62.5);
  vertex(460,237.5);
  vertex(740,237.5);
  vertex(650,62.5);
  endShape(CLOSE);

    //punta izquierda
    
// triangle (550,62.5,550,237.5,460,237.5);
  //punta derecha
//  triangle (650,237.5,650,62.5,740,237.5);
  
  
  fill(#FFC636);
      //oreja izquierda
  ellipse(537.5,125,25,45);
  
  ellipse(537.5,125,10,15);
  //oreja derecha
  ellipse (662.5,125,25,45);
 
   fill(#EAB632);
  //cuenca de las orejas
  ellipse(537.5,125,10,15);
  ellipse (662.5,125,10,15);
  
  
 
 fill(#FFC636);
 ellipse(600,62.5,100,10);
  //cabeza
    rectMode (CENTER);
  rect (600,150,100,175);
  ellipse (600,150,125,175);

  
  //cara
stroke(0);
//ojo izquierdo
ellipse (575,120,35,12);
//ojo derecho
ellipse (625,120,35,12);
//pupila izquierda
ellipse (575,120,12,12);
//pupila derecha
ellipse (625,120,12,12);

stroke(0);
//boca
ellipse (600,200,50,10);
line (575,200,625,200);

  noStroke();
  
  //linea
//  line(0,62.5,800,62.5);
  //linea meridiano
 // line(600,0,600,400);
  //lineas cuello
 // line(550,0,550,400);
 // line(650,0,650,400);
  
  fill(#FAC744);
  
  beginShape ();
  vertex(460,400);
  vertex(550,237.5);
  vertex(650,237.5);
  vertex(740,400);
  endShape(CLOSE);
  
  
  //triangulo lateral izquierdo
 // triangle (550,237.5,550,400,460,400);
  
 //triangulo lateral derecho
 // triangle (650,237.5,650,400,740,400);

fill(#FFB908);

//vertice lateral izquierdo
beginShape();
vertex(460,400);
vertex(550,237.5);
vertex(460,237.5);
vertex(470,318.75);
endShape(CLOSE);

//vertice lateral derecho
beginShape();
vertex(740,400);
vertex(650,237.5);
vertex(740,237.5);
vertex(730,318.5);
endShape(CLOSE);

}
