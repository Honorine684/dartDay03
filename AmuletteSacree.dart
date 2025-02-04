import 'Artefact.dart';
import 'Rituel.dart';

class Amulettesacree extends Artefact implements Rituel {
  Amulettesacree(super.nom);

  @override
  void realiserRituel() {
    // TODO: implement realiserRituel
    print("Cette amulette sacreé est obtenue en mélangeant plusieus magies obscures");
  }

}