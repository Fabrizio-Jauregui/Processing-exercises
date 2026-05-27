/*

 Ejercicio 1: Barras tipo gráfico (Array 1D interactivo)
 
 
 
 Desarrollar un programa en Processing que utilice un array de una dimensión para representar un conjunto de barras verticales en pantalla.
 
 Cada posición del array representa una barra. El valor almacenado en cada índice define la altura de esa barra.
 
 El sistema debe permitir modificar los valores del array de manera interactiva utilizando el mouse, simulando el funcionamiento de un ecualizador.
 
 
 
 Declarar un array para almacenar las alturas de las barras.
 
 Dibujar todas las barras en pantalla, distribuidas horizontalmente de manera uniforme.
 
 Detectar la posición del mouse en X para determinar qué barra se está modificando.
 
 La altura de la barra seleccionada debe depender de la posición del mouse en Y.
 
 Limitar los valores para que las barras no se dibujen fuera de la pantalla.
 
 Actualizar el dibujo en tiempo real.
 Comprender cómo un array puede utilizarse para almacenar y manipular múltiples valores relacionados, y cómo vincular esos datos con una representación visual interactiva.
 
 */
int cant_lineas = 5;
int[] lineas = new int[cant_lineas];


void setup() {
  size(500, 500);
  frameRate(60);
}

void draw() {
  int div_lineas =  width/cant_lineas;//100px
 detect_cada_linea();
  for (int i = 0; i<cant_lineas; i++) {
    int espacio_lineas = div_lineas*i;
    line(espacio_lineas, lineas[i], espacio_lineas, height);
  }
  
}
void detect_cada_linea() {
  int div_lineas =  width/cant_lineas;//100px
 background(200, 500, 200);
  for (int i = 0; i<cant_lineas; i++) {
   if(mouseX >= div_lineas*i && mouseX <= div_lineas*(i+1)){
     lineas[i] = mouseY;
     println(div_lineas*i);
   }
  }
}
/*
     //int espacio_lineas = div_lineas*i;
    if (mouseX >= 0 && mouseX< 100) {
      lineas[0] = mouseY;
      println("pos0", lineas[0]);
    }

    if (mouseX >= 100 && mouseX< 200) {
      lineas[1] = mouseY;
      println("pos1", lineas[1]);
    }

    if (mouseX >= 200 && mouseX< 300) {
      lineas[2] = mouseY;
      println("pos2", lineas[2] );
    }

    if (mouseX >= 300 && mouseX< 400) {
      lineas[3] = mouseY;
      println("pos3", lineas[3]);
    }

    if (mouseX >= 400 && mouseX< 500) {
      lineas[4] = mouseY;
      println("pos4", lineas[4]);
    }
  */
//Detectar donde está el mouseY
// Que la altura donde comienzan las lines de por si sea 0 cuando se dibujan
// Hacer que la altura donde comienzan se remplace por mouseY
// Crear las lineas adentro del array y que cada posicion sea una linea dibujada
// saber la posicion exacta de la linea
// sabemos que son estas las posiciones width inicial= div_lineas*i height inicial = 0 width final = div_lineas*i heigth final = height
// ¿Que me interesa de todo eso? hay que tener en cuenta que yo quiero modificar unicamente donde empieza a crearse la linea, no donde termina
// entonces me interesa el heigth inicial
// ¿Podria hacer como el ejercicio anterior? crear las posiciones de la linea en el array y despues recorrerlo con un for en el draw?
// Deberia poner un background en el draw?

//El hecho de que cada posicion del array tiene que representar a una barra se me hace complicado
// Tendria que saber donde esta exactamente todo el heigth de cada barra
//Si toco en div_lineas*i en el ciclo 0, o sea la primera, que cambie el widht a donde este el mouseY
// el array tiene que guardar mouseY, ok? pero
// Tendria que se como que si toco la posicion 3, o sea la linea 3, se cambie solo la altura de esa posicion, no todas
//if(toco la linea 4, osea div_lineas*i(3) = 300px de widht, cambie el valor de linea[3] = mouseY

//creo que primero deberia de hacer que las lineas comiencen en 0 y que si toco con el mouse se cambien a mouseY
//listo

/*ahora lo que se me ocurre es hacer muchos if, donde sea, if(div_lineas*0){
 line(div_lineas*i, mouseY, div_lineas*i, height);
 }
 
/*
 Lo que se me ocurre es que cada linea tendria que estar asociada a un numero, entonces, cuando se haga click en la line 3, solamente va a cambiar el height inicial de ese numero, no todas la lineas
 Si te lo pones a pensar, ya estan identificadas las lineas, se identifican segun la posicion x en la que estan, por ejemplo la primera esta en width = 0.
 pero a la vez las lineas se crean por la division de la cantidad de lineas dividido width, que despues se multiplica en el for,
 o sea que cada linea en verdad esta identificada por el numero i, la linea 1 esta asociada a i=0
 entonces se me ocurre que si i = 0 que se modifique el primer heigth del line(x,y,x,y) remplazandose por mouseY
 pero hay que recordar que line esta creado por las posiciones del array
 */
 
 /*
 Bien, ya hice que funcione pero manualmente, ahora quiero que el valor del if no sea width == 0, si no que sea i == 0, porque es ahi cuando nos referimos a la primera linea
 la ia me dijo que seria mejor si detectara por secciones en lugar de pixel especifico, la seccion 0 va desde 0px a 100px, osea que desde i == 0 hasta i == 1
 Bueno, la idea que se me ocurre es seleccionar el area 1, ya lo hice aca espacio_lineas >= 0 && espacio_lineas< 100 especificando esto
 la ia me dijo algo muy cierto, que en realidad deberia poner mouseX, no se porque no lo pense, me esta re fallando jajaja
 Bienm ya lo hice y el equializador funciona bien, ahora tengo varias cosas para hacer, por ejemplo, pensar:
 ¿Hay una manera de que cada seccion se sepa desde el principio y no tener que hacerlo manualmente?
 ¿Hay una manera de que mouseY se almacene de manera automatica sin tener que decir cual es la posicion del array al pasar el mouse por cada seccion?
 Ok, se que tengo que usar i pero no como
 ok, tengo que hacer un unico if para comprobar todo
 */
