import 'package:flutter_riverpod/flutter_riverpod.dart';

final radioProvider = StateProvider<int>((ref) {
  return 0;
});

//O radioProvider é definido como um provedor (as categorias)
//de estado que armazena um valor inteiro. O valor inicial do estado é 
//definido como 0 através da função lambda passada para o construtor do StateProvider.

//O ref é um objeto de referência que fornece acesso a várias funcionalidades do Riverpod, 
//como a leitura e gravação do estado. Ele é passado como um parâmetro para a função lambda, 
//permitindo que você interaja com o estado do provedor.

