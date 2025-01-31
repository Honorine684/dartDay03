import 'dart:io';

import 'Amulette.dart';

class Boutique {
  List<Amulette> inventaire = [];

  void ajouterAmulette(Amulette amulette){
    inventaire.add(amulette);
  }
  void afficherAmulettes(){
    print("Voila les amulettes de la boutique : ");
    for(var amulette in inventaire){
      print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau})");
    }
  }
  void vendreAmulette(String? nom){
  if(nom == null){
    print("Impossible de faire cet action");
  }
  bool onAVendu = false;
  for(var amulette in inventaire){
    if(nom!.toLowerCase() == amulette.nom?.toLowerCase()){
        inventaire.remove(amulette);
        print("${amulette.nom} vendu avec succès");
        onAVendu = true;
        break;
      }
    }
    if(onAVendu == false){
      print("On ne peut vendre cet amulette");
    }
  }
}



void main(){
  Boutique boutiqueAmulette = Boutique();
  boutiqueAmulette.ajouterAmulette(Amulette("Flamme Eternelle", 50, "Obsidienne"));
  boutiqueAmulette.ajouterAmulette(Amulette("Coeur Geleé", 40, "Crystal de glace"));
  boutiqueAmulette.ajouterAmulette(Amulette("Voile Nocturne", 60, "Onyx"));
  boutiqueAmulette.afficherAmulettes();
  print("Entrez le nom de l'amulette à vendre");
  String? nom = stdin.readLineSync();
  boutiqueAmulette.vendreAmulette(nom);
  boutiqueAmulette.afficherAmulettes(); 
  
}