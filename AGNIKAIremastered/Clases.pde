PImage Aang;
PImage Katara;
PImage Toph;
PImage Zuko;
PImage Azula;
PImage Tsuki;

class personaje {
  // Atributos 
  String name; 
  int hp;
  int attack;
  int defense;

  // Parámetros del método de consturcción de clase.
  personaje(String name_, int hp_, int attack_, int defense_) {

    // Parámetros del método de construcción se asignan como valores de atributos.
    name = name_;
    hp = hp_;
    attack = attack_;
    defense = defense_;
  }
  
  void display(){
  }
}

class Aang extends personaje{
 Aang(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
 
 void display(){
   Aang = loadImage ("AANG.png");
 }
}

class Katara extends personaje{
 Katara(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
 
  void display(){
   Katara = loadImage ("KATARA.png");
 }
}

class Toph extends personaje{
 Toph(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
 
  void display(){
   Toph = loadImage ("TOPH.png");
 }
}

class Zuko extends personaje{
 Zuko(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
 
  void display(){
   Zuko = loadImage ("ZUKO.png");
 }
}

class Azula extends personaje{
 Azula(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
  void display(){
   Azula = loadImage ("AZULA.png");
 }
}

class Tsuki extends personaje{
 Tsuki(String name_, int hp_, int attack_, int defense_){
   super(name_, hp_, attack_, defense_);
 }
 
  void display(){
   Tsuki = loadImage ("TSUKI.png");
 }
}
