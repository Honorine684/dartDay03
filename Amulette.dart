import 'dart:io';

void main(){
  List<Amulette> amulettes = [
    Amulette("Flamme Eternelle", 50, "Obsidienne"),
    Amulette("Coeur Geleé", 40, "Crystal de glace"),
    Amulette("Voile Nocturne", 60, "Onyx")
  ];
  // afficher les amulettes

  for(Amulette amulette in amulettes){
    print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau})");
  }
  /*Amulette amuletteFeu = Amulette("Flamme Eternelle", 50, "Obsidienne");
  Amulette amuletteGlace = Amulette("Coeur Geleé", 40, "Crystal de glace");
  Amulette amuletteOmbre = Amulette("Voile Nocturne", 60, "Onyx");
  
  print("Amulette Feu(Nom: ${amuletteFeu.nom},Puissance: ${amuletteFeu.puissance},Matériau: ${amuletteFeu.materiau})");
  print("Amulette Glace(Nom: ${amuletteGlace.nom},Puissance: ${amuletteGlace.puissance},Matériau: ${amuletteGlace.materiau})");
  print("Amulette Ombre(Nom: ${amuletteOmbre.nom},Puissance: ${amuletteOmbre.puissance},Matériau: ${amuletteOmbre.materiau})");*/
  
  // test de la fonction trouverAmulette
  print("Entrez le nom de l'amulette à chercher");
  String? nomRecherche = stdin.readLineSync();
  trouverAmulette(nomRecherche, amulettes);
}


class Amulette{
  String? nom;
  int? puissance;
  String? materiau;
  Amulette(this.nom,this.puissance,this.materiau);
  
}

void trouverAmulette(String? nomRecherche,List<Amulette> amulettes){
  if(nomRecherche == null){
    print("Votre recherche est invalide");
  }
  bool onATrouver = false;
  for(Amulette amulette in amulettes){
    if(amulette.nom?.toLowerCase() == nomRecherche!.toLowerCase()){
      print("Amulette trouvé");
      print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau})");
      onATrouver = true;
      break;
    } 
  }

   if(!onATrouver){
    print("Cette amulette n'existe pas");
  }
}


