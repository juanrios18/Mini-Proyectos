import 'senamon.dart';

class entrenador {
  //Atributos
  String _nombreEntrenador;
  String _email;
  DateTime  _fechaNac;
  int _experiencia;
  int _batallasGan=10;

  List<senamon> _senamonesAtrapados = [];

  //Constructor
  entrenador(this._nombreEntrenador, this._email, this._fechaNac,
      this._experiencia, this._batallasGan);

// set y get
  void setMySenamones(List<senamon> senamones) {
    _senamonesAtrapados = senamones;
  }

  List<senamon> getSenamones() {
    return _senamonesAtrapados;
  }

  String getNombreEntrenador() {
    return _nombreEntrenador;
  }

  void setNombreEntrenador(String nomEntrenador) {
    _nombreEntrenador = nomEntrenador;
  }

  String getEmail() {
    return _email;
  }

  void setEmail(String email) {
    _email = email;
  }

  DateTime getfechaNac() {
    return _fechaNac;
  }

  void setfechaNac(DateTime fechaNac) {
    _fechaNac = fechaNac;
  }

  int getexperiencia() {
    return _experiencia;
  }

  void setexperiencia(int experiencia) {
    _experiencia = experiencia;
  }

  int getbatallasGan() {
    return _batallasGan;
  }

  void setbatallasGan(int batallasGan) {
    _batallasGan = batallasGan;
  }

  senamon remplazarSenamon(int posicionSenamonRemover, senamon nuevoSenamon) {
    senamon senamonRemovido;
    senamonRemovido = this._senamonesAtrapados[posicionSenamonRemover];
    this._senamonesAtrapados[posicionSenamonRemover] = nuevoSenamon;
    return senamonRemovido;
  }

  // metodo
  void AtraparSenamon(List<senamon> senamones, int posicion) {
    this._senamonesAtrapados.add(senamones[posicion]);
  }

  void mostrarInformacion() {
    print("""
  El nombre del entrenador es: ${this._nombreEntrenador} 
  El email del entrenador es: ${this._email}
  La fecha de nacimiento del entrenador es: ${this._fechaNac}
  El nivel de experiencia del entrenador es: ${this._experiencia}
  Las  batallas ganadas del entrenador son: ${this._batallasGan}
""");
  }

  void aumentar(int cantidadAumentar, int opcionMenuEntrenar, int senamonEntrenar) {
    int experienciaNecesaria = cantidadAumentar * 10;
    if (this._experiencia >= experienciaNecesaria) {
      print("");
      print("");
      print("tiene la experiencia necesaria");
      print(".......................................................");


      if (opcionMenuEntrenar == 1) {
        this._senamonesAtrapados[senamonEntrenar].aumentarAtaque(cantidadAumentar);
        this._experiencia = this._experiencia - experienciaNecesaria;

        print("el nuevo nivel de ataque es de ${_senamonesAtrapados[senamonEntrenar].getnivelAtaque()}");
      } else if (opcionMenuEntrenar == 2) {
        this._senamonesAtrapados[senamonEntrenar].aumentarSalud(cantidadAumentar);
        this._experiencia = this._experiencia - experienciaNecesaria;
        print(" los nuevos puntos de salud son de ${_senamonesAtrapados[senamonEntrenar].getpuntosSalud()}");
      }else{
        print("opcion de aumento incorrecta");
      }
    } else{
      print("NO tiene la experiencia necesaria");
    }
  }
}
