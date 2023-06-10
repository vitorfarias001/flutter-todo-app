import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateProvider = StateProvider<String>((ref) {
  return 'dd/mm/yy ';
});

final timeProvider = StateProvider<String>((ref) {
  return 'hh : mn';
});


//O dateProvider é definido como um provedor de estado 
//que armazena uma string representando uma data. O valor inicial do estado é definido como 'dd/mm/yy '
// através da função lambda passada para o construtor do StateProvider.

//O timeProvider é definido de forma semelhante, 
//como um provedor de estado que armazena uma string representando um horário. 
//O valor inicial do estado é definido como 'hh : mn'.

//Esses provedores de estado podem ser usados em diferentes partes do seu código Flutter 
//para armazenar e acessar informações relacionadas à data e ao tempo, 
//permitindo que você compartilhe e gerencie esses dados de forma fácil e reativa usando o Riverpod.




