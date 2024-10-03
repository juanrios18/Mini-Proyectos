import 'dart:io';
import 'dart:math';
import 'entrenador.dart';
import 'senamon.dart';

class Torneo {
  int _fase;
  List<senamon> _mundoSenamon;
  List<entrenador> _listaEntrenadores;

  Torneo(this._fase)
      : _listaEntrenadores = [],
        _mundoSenamon = [];

  Iniciar() {
    this._mundoSenamon = [
      senamon("Flamaro", 10, "Fuego", "8 kg", 70, 20, 1, 30,
          "Un senamon con una melena ardiente, conocido por sus ataques rápidos y poderosos."),
      senamon("Aquaflow", 12, "Agua", "12 kg", 80, 18, 1, 40,
          "Este senamon es capaz de crear corrientes de agua a su alrededor para defenderse"),
      senamon("Sparko", 15, "Electrico", "7 kg", 65, 25, 2, 35,
          "Genera descargas eléctricas para paralizar a sus oponentes antes de atacar"),
      senamon("Pikachu", 9, "Hierva", "10 kg", 60, 15, 1, 25,
          "Un senamon que se camufla entre la vegetación y ataca con hojas afiladas."),
      senamon("Windyra", 14, "Volador", "6 kg", 75, 22, 2, 50,
          "Su velocidad es incomparable, creando tornados que dejan a los enemigos sin defensas."),
      senamon("Pyrox", 20, "Fuego", "14 kg", 90, 35, 2, 60,
          "Un senamon con un corazón ardiente que puede derretir cualquier obstáculo con sus llamas."),
      senamon("Hydrofin", 18, "Agua", "15 kg", 85, 28, 2, 55,
          "Con aletas poderosas, Hydrofin navega por cualquier cuerpo de agua con gracia."),
      senamon("Thunderpan", 13, "Electrico", "9 kg", 68, 24, 1, 45,
          "Sus zarpas electrificadas aseguran que cada golpe deje un impacto duradero."),
      senamon("Vinepix", 11, "Hierva", "8 kg", 72, 19, 1, 32,
          "Usa sus largas enredaderas para atrapar a sus enemigos y drenarlos de energía."),
      senamon("Sky", 17, "Volador", "10 kg", 78, 27, 2, 48,
          "Sus alas brillantes pueden cegar a los oponentes, mientras ataca desde arriba."),
      senamon("Esmeralda", 19, "Fuego", "13 kg", 88, 32, 2, 55,
          "Un senamon que deja un rastro de cenizas a su paso, temido por su ataque explosivo."),
      senamon("Tidalwave", 16, "Agua", "17 kg", 82, 26, 2, 50,
          "Genera olas inmensas que arrasan con todo a su paso."),
      senamon("Voltaire", 14, "Electrico", "10 kg", 74, 29, 2, 44,
          "Sus ataques Electricos son tan rápidos que no hay tiempo de reaccionar."),
      senamon("Thor", 12, "Hierva", "11 kg", 76, 21, 1, 35,
          "Un senamon que florece en batalla, lanzando espinas venenosas."),
      senamon("Cyclonix", 18, "Volador", "12 kg", 80, 30, 2, 53,
          "Puede volar a velocidades que generan ciclones destructivos."),
      senamon("Infernon", 20, "Fuego", "16 kg", 92, 38, 3, 70,
          "Un senamon legendario que controla las llamas con una fuerza devastadora."),
      senamon("Aqualive", 15, "Agua", "14 kg", 83, 24, 2, 46,
          "Sus garras pueden cortar incluso las corrientes más fuertes, es un nadador experto."),
      senamon("Zaphiro", 18, "Electrico", "9 kg", 77, 34, 2, 58,
          "Corre a la velocidad del rayo, dejando un rastro de energía eléctrica a su paso."),
      senamon("Gray", 17, "Hierva", "13 kg", 81, 27, 2, 49,
          "Protege su territorio con una barrera de hojas y raíces, atacando con precisión."),
      senamon("Breeze", 19, "Volador", "11 kg", 85, 33, 3, 62,
          "Un senamon majestuoso que reina sobre los cielos con ataques aéreos devastadores.")
    ];

    //this._listaEntrenadores.add(new entrenador("PEPE", "PEPE", DateTime.parse( "2001-01-01"), 0, 5));
    //this._listaEntrenadores.add(new entrenador("Angie", "PEPE", DateTime.parse( "2001-01-01"), 0, 4));
    //this._listaEntrenadores.add(new entrenador("Andres", "PEPE", DateTime.parse( "2001-01-01"), 0, 10));
    //this._listaEntrenadores.add(new entrenador("Cristian", "PEPE", DateTime.parse( "2001-01-01"), 0, 10));
    //this._listaEntrenadores.add(new entrenador("Juan", "PEPE", DateTime.parse( "2001-01-01"), 0, 10));

    int opcionMenuFase1;
    int opcionMenuTorneoFase1;

    print(" 🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱 FASE ${this._fase} 🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱");
    print(" ");

    do {
      print("""
          ------------------ MENU FASE ${this._fase} -----------------
        |  1. Crear Entrenador y atrapar senamones         |
        |  0. Salir                                        |
        |  Seleccione una opción:                          |
          -------------------------------------------------  """);

      opcionMenuFase1 = int.parse(stdin.readLineSync()!);
      print(".......................................................");
      print("");

      switch (opcionMenuFase1) {
        case 1:
          int numeroentrenador = 1;
          int cantCompetidores = 0;

          // Se crean los entrenadores

          if (this._fase == 1) {
            cantCompetidores = 2;

          } else if (this._fase == 2) {

            cantCompetidores = 0;
            print("Ingrese la cantidad de participantes que  competiran");
            cantCompetidores = int.parse(stdin.readLineSync()!);
            print(".......................................................");

          }

          while (this._listaEntrenadores.length < cantCompetidores){
            this._listaEntrenadores.add(crearentrenador(numeroentrenador));
            numeroentrenador++;
          }

          // Entra al menu del torneo
          do {
          print(".......................................................");
          print("");
          print("");

            print("""
                   --------- INICIASTE EL TORNEO FASE ${this._fase}🦊 -------------
                  | 1. Cambiar Senamon                                 |
                  | 2. Entrenar Senamones                              |
                  | 3. Realizar Batalla                                |
                  | 4. Ver información de entrenadores y Senamones     |
                  | 0. Salir                                           |
                  | Seleccione una opción                              |
                    --------------------------------------------------     """);

            opcionMenuTorneoFase1 = int.parse(stdin.readLineSync()!);
            print(".......................................................");


            switch (opcionMenuTorneoFase1) {
              case 1:
                int numeroEntrenado = 0;
                int senamonReemplazado;
                int senamonNuevo;
                senamon senamonTemporal;

                print( "Ingrese el NUMERO del entrenador que va reemplazar un senamon");
                numeroEntrenado = int.parse(stdin.readLineSync()!) - 1;
                print(".......................................................");

                print("Estos son los senamones disponibles");
                print("");
                print("");

                mostrarSenamonesExistentes();
                mostrarSenamonesPorEntrenador(
                    this._listaEntrenadores[numeroEntrenado]);

                print("");
                print("Elija el NUMERO del senamon que desea reemplazar");
                senamonReemplazado = int.parse(stdin.readLineSync()!) - 1;
                print(".......................................................");


                print("");
                print("Elija el NUMERO del nuevo senamon");
                senamonNuevo = int.parse(stdin.readLineSync()!) - 1;
                 print(".......................................................");

                senamonTemporal = this
                    ._listaEntrenadores[numeroEntrenado]
                    .remplazarSenamon(
                        senamonReemplazado, this._mundoSenamon[senamonNuevo]);
                this._mundoSenamon.removeAt(senamonNuevo);
                this._mundoSenamon.add(senamonTemporal);

                mostrarSenamonesExistentes();
                mostrarSenamonesPorEntrenador(
                    this._listaEntrenadores[numeroEntrenado]);
                break;

              case 2:
                int cantidad;
                int jugadorEntrenar;
                int senamonEntrenar;

                print("Ingrese el NUMERO del entrenador");
                jugadorEntrenar = int.parse(stdin.readLineSync()!) - 1;
                print(".......................................................");
                print("");
                print("");

                mostrarSenamonesPorEntrenador(this._listaEntrenadores[jugadorEntrenar]);

                print("Escriba el NUMERO del senamon que desea entrenar");
                senamonEntrenar = int.parse(stdin.readLineSync()!) - 1;

                int opcionMenuEntrenar;

                print("""       -------- ENTRENAR SENAMON ---------
                              | 1. Subir cantidad de Ataque         | 
                              | 2. Subir cantidad de Salud          | 
                              | Seleccione una opción:              |
                                -----------------------------------    """);

                opcionMenuEntrenar = int.parse(stdin.readLineSync()!);
                    print(".......................................................");


                print("Ingrese la cantidad  que desea aumentar");
                cantidad = int.parse(stdin.readLineSync()!);
                    print(".......................................................");

                this
                    ._listaEntrenadores[jugadorEntrenar]
                    .aumentar(cantidad, opcionMenuEntrenar, senamonEntrenar);

                break;

              case 3:
                int entrenadorContinua;
                int senamonIniciaCompetir;
                int senamonContinuaCompetir;
                int entrenadorInicia;

                  if (this._fase == 2) {
                    print("Se elegiran los jugadores aleatoreamente 🪙");
                    print(".......................................................");


                    Random random = Random();
                    entrenadorInicia = random.nextInt(this._listaEntrenadores.length - 1);

                    do{
                      entrenadorContinua = random.nextInt(this._listaEntrenadores.length -1);
                    }while(entrenadorContinua == entrenadorInicia);

                  } else {
                    Random random = Random();
                    print("Se elegiran quien inicia aleatoreamente 🪙");
                    entrenadorInicia = random.nextInt(1);
                    print(".......................................................");

                    if (entrenadorInicia == 0) {
                      entrenadorContinua = 1;
                    } else {
                      entrenadorContinua = 0;
                    }
                  }
                  
                  List<senamon> ListSenamonEntrenadorInicia = List.from( this._listaEntrenadores[entrenadorInicia].getSenamones());
                  List<senamon> ListSenamonEntrenadorContinua = List.from(this._listaEntrenadores[entrenadorContinua].getSenamones());
                  
                  do {
                    //Seleccion del senamon del primer entrenador
                    senamonIniciaCompetir = seleccionSenamonParaBatalla(entrenadorInicia, ListSenamonEntrenadorInicia);

                    //Seleccion del senamon del segundo entrenador
                    senamonContinuaCompetir = seleccionSenamonParaBatalla( entrenadorContinua, ListSenamonEntrenadorContinua);
                    
                    print("Competiran:");
                    print("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°");
                    print("");
                    print("");

                    print(ListSenamonEntrenadorInicia[senamonIniciaCompetir].getNombre());
                    print("----------------------------------------------");
                    print("VS");
                    print("----------------------------------------------");
                    print(ListSenamonEntrenadorContinua[senamonContinuaCompetir].getNombre());
                    print("-----------------------------------------------");

                    while (ListSenamonEntrenadorInicia[senamonIniciaCompetir].getpuntosSaludEnBatalla() > 0 &&
                        ListSenamonEntrenadorContinua[senamonContinuaCompetir] .getpuntosSaludEnBatalla() > 0) {

                      // TURNO DEL PRIMER SENAMON
                      bool senamonMuerto1 = turnoSenamones(ListSenamonEntrenadorInicia,senamonIniciaCompetir,senamonContinuaCompetir,ListSenamonEntrenadorContinua);
                      if (senamonMuerto1 == true) {
                        break;
                      }
                      // TURNO DEL SEGUNDO SENAMON
                      bool senamonMuerto2 = turnoSenamones( ListSenamonEntrenadorContinua,senamonContinuaCompetir,senamonIniciaCompetir,ListSenamonEntrenadorInicia);
                      if (senamonMuerto2 == true) {
                        break;
                      }
                    }
                  } while (ListSenamonEntrenadorInicia.length >= 3 &&
                      ListSenamonEntrenadorContinua.length >= 3);

                  print("FIN DE LA BATALLA");

                  for (int j = 0;j <this._listaEntrenadores[entrenadorInicia] .getSenamones().length;j++) {
                    this._listaEntrenadores[entrenadorInicia] .getSenamones()[j].reiniciarPuntosSaludEnBatalla();
                  }

                  for (int j = 0; j <this._listaEntrenadores[entrenadorContinua].getSenamones() .length;j++) {
                    this._listaEntrenadores[entrenadorContinua] .getSenamones()[j].reiniciarPuntosSaludEnBatalla();
                  }

                  if (ListSenamonEntrenadorContinua.length < 3) {
                    print("El ganador de la  batalla es ${this._listaEntrenadores[entrenadorInicia].getNombreEntrenador()}");
                    this._listaEntrenadores[entrenadorInicia].setbatallasGan(this._listaEntrenadores[entrenadorInicia] .getbatallasGan() +1);
                    this._listaEntrenadores[entrenadorInicia].setexperiencia(this._listaEntrenadores[entrenadorInicia] .getexperiencia() +100);

                  } else if (ListSenamonEntrenadorInicia.length < 3) {
                    print("El ganador de la batalla es ${this._listaEntrenadores[entrenadorContinua].getNombreEntrenador()}");
                    this._listaEntrenadores[entrenadorContinua].setbatallasGan( this._listaEntrenadores[entrenadorContinua].getbatallasGan() +1);
                    this._listaEntrenadores[entrenadorContinua].setexperiencia(this ._listaEntrenadores[entrenadorContinua].getexperiencia() + 100);
                  } else {
                    print("NO SE ENCONTRO");
                  }
                  break;

              case 4:
              if(this._fase == 2){
                 mostrarinfoFase2();
                
              }else{
                  mostrarinfo();
              }
            }
          } while (opcionMenuTorneoFase1 != 0);
      }
    } while (opcionMenuFase1 != 0);
  }
              //°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° METODOS °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°//

                entrenador crearentrenador(int numeroentrenador) {
                  String nombreEntrenador;
                  String email;
                  DateTime fechaNac;

                  print("---------------------------------------------------------------");
                  print("Ingrese el nombre del entrenador ${numeroentrenador}");
                  nombreEntrenador = stdin.readLineSync()!;
                  print("---------------------------------------------------------------");
                  print("Ingrese su email");
                  email = stdin.readLineSync()!;
                  print("---------------------------------------------------------------");
                  print("Ingrese su fecha de nacimiento en este orden (AAAA-MM-DD)");
                  fechaNac = DateTime.parse(stdin.readLineSync()!);
                  print("---------------------------------------------------------------");
                
                  entrenador entrenadorTemporal =
                      new entrenador(nombreEntrenador, email, fechaNac, 0, 0);
                  entrenadorTemporal;

                  int senamonesFaltantes = 5;
                  int listSenElegido = 1;
                  do {
                    print(" ");

                    mostrarSenamonesExistentes();

                    print("Debe atrapar ${senamonesFaltantes} senamones de la lista: ");
                    print("-----------------------------------------------------------");

                    print("Ingrese el NUMERO del senamon que desea atrapar");
                    int senamonAtrapado = int.parse(stdin.readLineSync()!) - 1;
                    print(".......................................................");

                    entrenadorTemporal.AtraparSenamon(this._mundoSenamon, senamonAtrapado);
                    this._mundoSenamon.removeAt(senamonAtrapado);
                    listSenElegido++;
                    senamonesFaltantes--;
                  } while (listSenElegido <= 5);

                  print("Estos son los senamones que atrapaste");
                  print("");
                  print("");

                  mostrarSenamonesPorEntrenador(entrenadorTemporal);
                  return entrenadorTemporal;
                }

                void mostrarSenamonesExistentes() {
                  print("!!!!!!!!!! LISTA SENAMONES EXISTENTES !!!!!!!!!!!!");
                  for (int j = 0; j < this._mundoSenamon.length; j++) {
                    print("${j + 1}");
                    this._mundoSenamon[j].mostrarinfo();
                  }
                }

                void mostrarSenamonesPorEntrenador(entrenador entrenador) {
                  print(
                      "!!!!!!!!!! LISTA SENAMONES ATRAPADOS POR ${entrenador.getNombreEntrenador()} !!!!!!!!!!!!");
                  for (int j = 0; j < entrenador.getSenamones().length; j++) {
                    print("${j + 1}");
                    entrenador.getSenamones()[j].mostrarinfo();
                  }
                }

                int seleccionSenamonParaBatalla(
                    int numeroEntrenador, List<senamon> listSenamonesTemporales) {
                  int senamonQueCompite;
                  String nameInicia = this._listaEntrenadores[numeroEntrenador].getNombreEntrenador();
                  print(".......................................................");
                  print("Es turno del entrenador # $nameInicia");
                  print(".......................................................");

                  print("");
                  print("");

                  print("!!!!!!!!!! LISTA SENAMONES ATRAPADOS POR $nameInicia !!!!!!!!!!!!");
                  for (int j = 0; j < listSenamonesTemporales.length; j++) {
                    print("${j + 1}");
                    listSenamonesTemporales[j].mostrarInfoInBatalla();
                  }

                  print("");
                  print(".......................................................");
                  print("Ingrese el NUMERO del senamon con el que desea competir");
                  bool senamon1Elegido = false;

                  do {
                    print(".......................................................");
                    senamonQueCompite = int.parse(stdin.readLineSync()!) - 1;
                    print(".......................................................");
                    print("El senamon que competira es ${senamonQueCompite}");
                    print(".......................................................");
                    print("");

                    double Salud = listSenamonesTemporales[senamonQueCompite].getpuntosSaludEnBatalla();

                    if (Salud > 0) {
                      senamon1Elegido = true;
                      print("EL SENAMON TIENE PUNTOS DE SALUD SUFICIENTES PARA COMPETIR");
                    } else {
                      print(
                          "EL SENAMON NO TIENE PUNTOS DE SALUD  SUFUCIENTES PARA COMPETIR.");
                    } 

                  } while (!senamon1Elegido);
                  print(".......................................................");
                

                  return senamonQueCompite;
                }
                
                  bool turnoSenamones(List<senamon> ListSenamonAtaca, int posSenAtaca,
                    int posSenDefiende, List<senamon> ListSenamonDefiende) {

                  bool estaMuerto = false;

                  print( "${ListSenamonAtaca[posSenAtaca].getNombre()} ataca a ${ListSenamonDefiende[posSenDefiende].getNombre()}");
                  print(".......................................................");

                  if (this._fase == 1) {
                    ListSenamonDefiende[posSenDefiende].recibirAtaqueFaseuno(ListSenamonAtaca[posSenAtaca]);

                  } else if (this._fase == 2) {
                    ListSenamonDefiende[posSenDefiende] .recibirAtaqueFasedos(ListSenamonAtaca[posSenAtaca]);
                    
                  }
                  if (ListSenamonDefiende[posSenDefiende].getpuntosSaludEnBatalla() <= 0) {
                    print(".......................................................");
                    print("${ListSenamonDefiende[posSenDefiende].getNombre()} ha sido derrotado!");
                    print(".......................................................");

                  ListSenamonDefiende.removeAt(posSenDefiende);
                  estaMuerto = true;
                  }
                  return estaMuerto;
                }

                void mostrarinfo() {
                  print("INFORMACION DEL TORNEO:");
                  if (this._listaEntrenadores[0].getbatallasGan() >
                      this._listaEntrenadores[1].getbatallasGan()) {
                    print("El Ganador es el entrenador ${this._listaEntrenadores[0].getNombreEntrenador()}");
                  } else if (this._listaEntrenadores[1].getbatallasGan() >
                      this._listaEntrenadores[0].getbatallasGan()) {
                    print("El Ganador es el entrenador ${this._listaEntrenadores[1].getNombreEntrenador()}");
                  } else {
                    print("Los jugadores estan empatados");
                  }

                  for (var i = 0; i < this._listaEntrenadores.length; i++) {
                    print("-----------------------------------------");
                    print("La experiencia del entrenador ${this._listaEntrenadores[i].getNombreEntrenador()} es: ${this._listaEntrenadores[i].getexperiencia()}");
                    print("El entrenador  ${this._listaEntrenadores[i].getNombreEntrenador()} tiene un total de: ${this._listaEntrenadores[i].getbatallasGan()} batallas ganadas");
                  }
                }

                void mostrarinfoFase2() {
                  int numeroMayor = 0;
                  List<String> nombreGanadores = [];

                  print("INFORMACION DEL TORNEO");

                  for (var i = 0; i < this._listaEntrenadores.length; i++) {
                    if (this._listaEntrenadores[i].getbatallasGan() > numeroMayor) {
                      numeroMayor = this._listaEntrenadores[i].getbatallasGan();
                    }
                  }

                  for (var j = 0; j < _listaEntrenadores.length; j++) {
                    if (this._listaEntrenadores[j].getbatallasGan() == numeroMayor) {
                      nombreGanadores.add(this._listaEntrenadores[j].getNombreEntrenador());
                    }
                  }

                  if (nombreGanadores.length == 1) {
                    print("El entrenador ganador es: ${nombreGanadores[0]}");
                  } else if (nombreGanadores.length > 1) {
                    print("los ganadores son:");
                    for (var i = 0; i < nombreGanadores.length; i++) {
                      print(nombreGanadores[i]);
                    }

                  }

                  print("INFORMACION DE LOS ENTRENADORES");
                  for (var i = 0; i < this._listaEntrenadores.length; i++) {
                    print("---------------");
                    print("La experiencia del entrenador ${this._listaEntrenadores[i].getNombreEntrenador()} es: ${this._listaEntrenadores[i].getexperiencia()}");
                    print("El entrenador  ${this._listaEntrenadores[i].getNombreEntrenador()} tiene un total de: ${this._listaEntrenadores[i].getbatallasGan()} batallas ganadas");
                  }
                }
              }