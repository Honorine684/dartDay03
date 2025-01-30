void main(){
  Amulette amuletteFeu = Amulette("Flamme Eternelle", 50, "Obsidienne");
  Amulette amuletteGlace = Amulette("Coeur Geleé", 40, "Crystal de glace");
  Amulette amuletteOmbre = Amulette("Voile Nocturne", 60, "Onyx");
  
  print("Amulette Feu(Nom: ${amuletteFeu.nom},Puissance: ${amuletteFeu.puissance},Matériau:${amuletteFeu.materiau})");
  print("Amulette Glace(Nom: ${amuletteGlace.nom},Puissance: ${amuletteGlace.puissance},Matériau:${amuletteGlace.materiau})");
  print("Amulette Ombre(Nom: ${amuletteOmbre.nom},Puissance: ${amuletteOmbre.puissance},Matériau:${amuletteOmbre.materiau})");

}

class Amulette{
  String? nom;
  int? puissance;
  String? materiau;

  Amulette(this.nom,this.puissance,this.materiau);

}
