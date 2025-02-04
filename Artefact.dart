import 'dart:math';

import 'AmuletteSacree.dart';

class Artefact {
  String? nom;
  String? niveauRarete;
  List<String> listeNiveauRarete = [
    "Commun",
    "Rare",
    "Légendaire"
  ];

  Artefact(this.nom){
    Random random = Random();
    int index = random.nextInt(listeNiveauRarete.length);
    this.niveauRarete = listeNiveauRarete[index];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Artefact (Nom : $nom, Niveau de rareté : $niveauRarete)";
  }

}

void main(){
  Artefact artefact = Artefact("Bijou rare");
  print(artefact.toString());

  Amulettesacree amulettesacree = Amulettesacree("Oeil du dragon");
  amulettesacree.toString();
  amulettesacree.realiserRituel();
}