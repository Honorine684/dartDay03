import 'dart:io';

class Amulette{
  String? nom;
  int puissance;
  String? materiau;
  String? effet = null;
  bool estMaudite = false;
  Amulette(this.nom,this.puissance,this.materiau);
 /* Amulette(String? nom,int puissance,String? materiau,String? effet){
    this.nom = nom;
    this.puissance = puissance;
    this.materiau = materiau;
    this.effet = effet;
  }*/
  
  void enchanter(String? effetMagique){
    effet = effetMagique;
  }

  bool estEnchanter(){
    if(effet == null){
      return false;
    }else{
      return true;
    }
  }
  static fusionnerNom(Amulette amulette1, Amulette amulette2){
      return "${amulette1.nom}&&${amulette2.nom}";
  }
  static fusionnerPuissance(Amulette amulette1, Amulette amulette2){
    return amulette1.puissance + amulette2.puissance;
  }
  static fusionnerMateriau(Amulette amulette1, Amulette amulette2){
    return "${amulette1.materiau}&&${amulette2.materiau}";
  }
  static fusionnerEffet(Amulette amulette1, Amulette amulette2){
    return "${amulette1.effet}&&${amulette2.effet}";
  }
  static fusionnerAmulette(Amulette amulette1, Amulette amulette2){
    String? nomFusion = fusionnerNom(amulette1,amulette2) ;
    int puissanceFuison = fusionnerPuissance(amulette1, amulette2);
    String? materiauFusion = fusionnerMateriau(amulette1, amulette2);
   String? effetFuision = fusionnerEffet(amulette1, amulette2);

    Amulette amuletteFusion = Amulette(nomFusion, puissanceFuison, materiauFusion);
    amuletteFusion.effet =effetFuision;
    print("Amulette(Nom: ${amuletteFusion.nom},Puissance: ${amuletteFusion.puissance},Matériau: ${amuletteFusion.materiau},Effet: ${amuletteFusion.effet})");
  }
  /*bool maudire(){
    return 
  }*/

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

void main(){
  List<Amulette> amulettes = [
    Amulette("Flamme Eternelle", 50, "Obsidienne"),
    Amulette("Coeur Geleé", 40, "Crystal de glace"),
    Amulette("Voile Nocturne", 60, "Onyx")
  ];
  // afficher les amulettes

  /*for(Amulette amulette in amulettes){
    print("Amulette(Nom: ${amulette.nom},Puissance: ${amulette.puissance},Matériau: ${amulette.materiau})");
  }*/
  Amulette amuletteFeu = Amulette("Flamme Eternelle", 50, "Obsidienne");
  Amulette amuletteGlace = Amulette("Coeur Geleé", 40, "Crystal de glace");
  Amulette amuletteOmbre = Amulette("Voile Nocturne", 60, "Onyx");
  
  print("Amulette Feu(Nom: ${amuletteFeu.nom},Puissance: ${amuletteFeu.puissance},Matériau: ${amuletteFeu.materiau})");
  print("Amulette Glace(Nom: ${amuletteGlace.nom},Puissance: ${amuletteGlace.puissance},Matériau: ${amuletteGlace.materiau})");
  print("Amulette Ombre(Nom: ${amuletteOmbre.nom},Puissance: ${amuletteOmbre.puissance},Matériau: ${amuletteOmbre.materiau})");
  
  // test de la fonction trouverAmulette
  print("Entrez le nom de l'amulette à chercher");
  String? nomRecherche = stdin.readLineSync();
  trouverAmulette(nomRecherche, amulettes);

  // test de la fonction enchanter
  amuletteFeu.enchanter("Resistance au feu");
  amuletteOmbre.enchanter("Invisibilité");
  print("Amulette Feu(Nom: ${amuletteFeu.nom},Puissance: ${amuletteFeu.puissance},Matériau: ${amuletteFeu.materiau},Effet: ${amuletteFeu.effet})");
  print("Amulette Ombre(Nom: ${amuletteOmbre.nom},Puissance: ${amuletteOmbre.puissance},Matériau: ${amuletteOmbre.materiau},Effet: ${amuletteOmbre.effet})");

  // test de methode estenchanter
  print(amuletteFeu.estEnchanter());

  // test de la fusion des amulettes
 Amulette.fusionnerAmulette(amuletteFeu,amuletteGlace);

  
}



