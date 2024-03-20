import 'package:quiz_app_flutter/perguntas.dart';

class Helper{

  int _numeroDaQuestaoAtual = 0;

  final List<Perguntas> _bancoDePerguntas = [
    Perguntas('Fnx já conquistou dois títulos de Major de CS:GO.', true),
    Perguntas('Taco ganhou três Majors de CS:GO com a equipe SK Gaming.', true),
    Perguntas(' Chelo foi o primeiro jogador brasileiro a conquistar um título de Major de CS:GO.', false),
    Perguntas('FalleN é mais conhecido por seu estilo de jogo agressivo e individualista no CS:GO.', false),
    Perguntas('FalleN começou sua carreira como jogador de CS:GO profissional em 2012.', false),
    Perguntas('FalleN já representou equipes brasileiras em diversas competições internacionais, ajudando a elevar o cenário brasileiro de CS:GO ao reconhecimento global.', true),
    Perguntas('Boltz foi membro da equipe brasileira "Immortals" que alcançou as finais do Major de CS:GO em 2017.', true),
    Perguntas('Coldzera ficou conhecido por seu famoso momento "Coldzera Boost" durante o Major de CS:GO em 2016.', true),
    Perguntas('Fnx foi membro da lendária equipe brasileira "KaBuM! e-Sports" que surpreendeu o mundo do CS:GO ao vencer a equipe sueca "Ninjas in Pyjamas" no DreamHack Winter 2014.', true),
    Perguntas('FalleN é conhecido por suas habilidades excepcionais de liderança, mas nunca foi eleito o jogador mais valioso (MVP) de um Major de CS:GO.', false),
    Perguntas('Coldzera ganhou o prêmio de MVP (Most Valuable Player) do Major de CS:GO em 2016.', true),
    Perguntas('Coldzera conquistou três títulos do Major de CS:GO ao longo de sua carreira.', false),
    Perguntas('Fnx foi parte da histórica equipe brasileira SK Gaming que conquistou dois títulos consecutivos do Major de CS:GO em 2016 e 2017.', false),
  ];

  void proximaPergunta(){
    if(_numeroDaQuestaoAtual < _bancoDePerguntas.length -1){
      _numeroDaQuestaoAtual++;
    }
    print(_numeroDaQuestaoAtual);
    print(_bancoDePerguntas.length);
  }

  String obterQuestao(){
    return _bancoDePerguntas[_numeroDaQuestaoAtual].questao;
  }

  bool obterQuerstaoCorreta(){
  return _bancoDePerguntas[_numeroDaQuestaoAtual].respostaDaQuestao;
  }
  confereFimDaExecucao() {
    if (_numeroDaQuestaoAtual >= _bancoDePerguntas.length - 1) {
      print('Chegou na última pergunta do quiz');
      return true;
    } else {
      return false;
    }
  }

 

  resetarQuiz() {
    _numeroDaQuestaoAtual = 0;
  }
}