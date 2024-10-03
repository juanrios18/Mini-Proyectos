class senamon {
  //Atributos
  String _nombre;
  int _nivel;
  String _tipoSenamon;
  String _peso;
  double  _puntosSalud;
  double _puntosSaludEnBatalla;
  double _nivelAtaque;
  int _fase;
  int _nivelEnergia;
  String _descripcion;

  //Constructor
  senamon(
    this._nombre,
    this._nivel,
    this._tipoSenamon,
    this._peso,
    this._puntosSalud,
    this._nivelAtaque,
    this._fase,
    this._nivelEnergia,
    this._descripcion,
  ) : _puntosSaludEnBatalla = _puntosSalud; // Asignación aquí

  //getters y setter
  String getNombre() {
    return _nombre;
  }

  void setNombre(String nom) {
    _nombre = nom;
  }

  String getTipoSenamon() {
    return _tipoSenamon;
  }

  void setTipoSenamon(String tipo) {
    _tipoSenamon = tipo;
  }

  String getPeso() {
    return _peso;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  void setpuntosSalud(double salud) {
    _puntosSalud = salud;
  }

  double getpuntosSalud() {
    return _puntosSalud;
  }

  void setpuntosSaludEnBatalla(double saludBatalla) {
   _puntosSaludEnBatalla = saludBatalla;
  }

   double getpuntosSaludEnBatalla() {
    return _puntosSaludEnBatalla;
  }

  void setNivelAtaque(double Ataque) {
    _nivelAtaque = Ataque;
  }

  double getnivelAtaque() {
    return _nivelAtaque;
  }

  void setFase(int fase) {
    _fase = fase;
  }

  int getFase() {
    return _fase;
  }

  int getnivelEnergia() {
    return _nivelEnergia;
  }

  void setnivelEnergia(int energia) {
    _nivelEnergia = energia;
  }

  String getdescripcion() {
    return _descripcion;
  }

  void setdescripcion(String descripcion) {
    _descripcion = descripcion;
  }

  //metodos

  void reiniciarPuntosSaludEnBatalla(){
    this._puntosSaludEnBatalla = this._puntosSalud;
  }

  void aumentarAtaque(int ataque) {
    this._nivelAtaque += ataque;
  }

  void aumentarSalud(int salud) {
    this._puntosSalud += salud;
    this._puntosSaludEnBatalla += salud;
  }
  //############# METODOS ############

  void recibirAtaqueFaseuno( senamon senamonAtacante ) {
    this._puntosSaludEnBatalla -= senamonAtacante.getnivelAtaque();
    if (this._puntosSalud < 0) {
      this._puntosSaludEnBatalla = 0; // se asegura de que este no tenga vida negativa
    }
    print("El senamon ${this._nombre} ahora tiene ${this._puntosSaludEnBatalla} puntos de salud.");
  }

    void recibirAtaqueFasedos( senamon senamonAtacante ) {
    this._puntosSaludEnBatalla -= senamonAtacante.calcularDanio(senamonAtacante.getnivelAtaque(),calcularEfectividad(senamonAtacante.getTipoSenamon(), this._tipoSenamon));

    if (this._puntosSaludEnBatalla < 0) {
      this._puntosSaludEnBatalla = 0; // se asegura de que este no tenga vida negativa

    }
    print("El senamon ${this._nombre} ahora tiene ${this._puntosSaludEnBatalla} puntos de salud.");
    print(" y su tipo de efectividad es: ${calcularEfectividad(senamonAtacante.getTipoSenamon(), this._tipoSenamon).toUpperCase()}");
  }

String calcularEfectividad(String atacante, String defensor) {
  // EFECTO SEGUN LOS ENFRENTADOS
  String efecto = '';
  if (atacante == 'Agua' && defensor == 'Fuego') {
    efecto = 'Super Efectivo';
  } else if (atacante == 'Hierva' && defensor == 'Agua') {
     efecto = 'Super Efectivo';
  } else if (atacante == 'Fuego' && defensor == 'Electrico') {
     efecto = 'Super Efectivo';
  } else if (atacante == 'Volador' && defensor == 'Hierva') {
     efecto = 'Super Efectivo';
  } else if (atacante == 'Electrico' && defensor == 'Volador') {
     efecto = 'Super Efectivo';
  }else if(atacante == 'Fuego' && defensor == 'Hierva'){
     efecto = 'Efectivo';
  }else if(atacante == 'Agua' && defensor == 'Volador'){
     efecto = 'Efectivo';
  }else if(atacante == 'Hierva' && defensor == 'Electrico'){
     efecto = 'Efectivo';
  }else if(atacante == 'Volador' && defensor == 'Agua'){
     efecto = 'Efectivo';
  }else if(atacante == 'Electrico' && defensor == 'Hierva'){
     efecto = 'Efectivo';
  } else if (atacante == 'Fuego' && defensor == 'Fuego') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Fuego' && defensor == 'Agua') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Agua' && defensor == 'Agua') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Agua' && defensor == 'Hierva') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Hierva' && defensor == 'Hierva') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Hierva' && defensor == 'Volador') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Volador' && defensor == 'Volador') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Volador' && defensor == 'Electrico') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Electrico' && defensor == 'Fuego') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Electrico' && defensor == 'Electrico') {
     efecto = 'Poco Efectivo';
  } else if (atacante == 'Fuego' && defensor == 'Volador') {
     efecto = 'Normal';
  } else if (atacante == 'Agua' && defensor == 'Electrico') {
     efecto = 'Normal';
  } else if (atacante == 'Hierva' && defensor == 'Fuego') {
     efecto = 'Normal';
  } else if (atacante == 'Volador' && defensor == 'Fuego') {
     efecto = 'Normal';
  }
  return efecto;
}

// se hace la reapectiva operacion
 double calcularDanio(double nivelAtaque, String efectividad) {
  double resultado = 0;

  if (efectividad == 'Super Efectivo') {
    resultado = nivelAtaque * 2;
  }else if(efectividad == 'Efectivo'){
    resultado = nivelAtaque + (nivelAtaque * 0.4);
  }else if(efectividad == 'Poco Efectivo'){
    resultado = nivelAtaque + (nivelAtaque * 0.1);
 }else if(efectividad == 'Normal'){
    resultado = nivelAtaque;
 }
 return resultado;
 }
  

  void mostrarinfo() {
    print("""
    El nombre del senamon es: ${this._nombre} 
    El nivel del senamon es: ${this._nivel}
    El tipo del senamon es: ${this._tipoSenamon}
    El peso del senamon es: ${this._peso}
    Los puntos de salud del senamon son: ${this._puntosSalud}
    El nivel de ataque del senamon es: ${this._nivelAtaque}
    La fase del senamon es: ${this._fase}
    El nivel de energia del senamon es: ${this._nivelEnergia}
    La descripcion del senamon es: ${this._descripcion}""");
    print("-----------------------------------------------------------");
  
  }

    void mostrarInfoInBatalla() {
      print("""
      El nombre: ${this._nombre}
      Salud: ${this._puntosSaludEnBatalla}
      Ataque: ${this._nivelAtaque}
      Tipo: ${this._tipoSenamon}
      """);
      print("-----------------------------------------------------------");
      print(" ");
  }

 
}
