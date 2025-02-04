import 'dart:math';

import 'Amulette.dart';

class ForgeMagique {
  List<Amulette> amuletteRares =[];
  final Random _random = Random();

  void creerAmuletteRare(String nom,int puissance,String materiau,String effet){
     bool estBenie;
    if (_random.nextDouble() < 0.3) {
      estBenie = true;
    } else {
      estBenie = false;
    }
    Amulette amulette = Amulette.avecStatus(nom, puissance, materiau,effet,estBenie);

    amuletteRares.add(amulette);
  }

  void afficherAmuletteForge(){
    print("Voila les amulettes de la forge magique");
    print("=======================================");
    for(Amulette amulette in amuletteRares){
     print( amulette.toString());
    //print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau},Effet: ${amulette.effet})");
    }
  }


}

void main(){
  ForgeMagique forge = ForgeMagique();
 forge.creerAmuletteRare(
    "Œil du Dragon", 
    100, 
    "Cristal de Dragon", 
    "Augmente la vision nocturne et la résistance au feu"
  );

  forge.creerAmuletteRare(
    "Cœur de Phénix", 
    95, 
    "Plume de Phénix dorée", 
    "Permet une résurrection unique"
  );

  forge.creerAmuletteRare(
    "Pierre de Lune Ancestrale", 
    90, 
    "Météorite lunaire", 
    "Amplifie les pouvoirs magiques pendant la pleine lune"
  );
  forge.afficherAmuletteForge();
}