import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  MaskedTextController heightCtrl = MaskedTextController(mask: '000');
  MaskedTextController weightCtrl = MaskedTextController(mask: '000');
  String result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double height = double.parse(heightCtrl.text) / 100;
    double weight = double.parse(weightCtrl.text);
    double imc = weight / (height * height);

    print(imc);

    if (imc >= 40) {
      result = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 35) {
      result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 30) {
      result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 25) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.5) {
      result = "Peso ideal (${imc.toStringAsPrecision(2)})";
    } else {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    }
  }
}
