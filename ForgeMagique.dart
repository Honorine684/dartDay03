import 'Amulette.dart';

class ForgeMagique {
  List<Amulette> _amuletteRares =[];

  void creerAmuletteRare(String nom,int puissance,String materiau,String effet){
    Amulette amulette = Amulette.avecEffet(nom, puissance, materiau,effet);
    amulette.effet = effet;
    _amuletteRares.add(amulette);
  }

  void afficherAmuletteForge(){
    print("Voila les amulettes de la forge magique");
    print("=======================================");
    for(Amulette amulette in _amuletteRares){
    print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau},Effet: ${amulette.effet})");
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