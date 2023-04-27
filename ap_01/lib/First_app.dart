import 'package:flutter/material.dart';
import './page_indicator.dart';
import './page_body.dart';

class Firstapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }
}

class _StepFormState extends State<Firstapp> {
  final _stepFormController = PageController();
  int _page = 0;

  List _pagesList = [
    pageBody('assets/imag/Anakin.png', 'Anakin Skywalker',
        'Anakin Skywalker foi um Humano sensível à Força, que logo se tornou um Cavaleiro Jedi da República Galáctica ao ser considerado o Escolhido da Força. Durante as Guerras Clônicas, suas realizações como comandante no campo de batalha lhe proporcionaram o apelido de Herói Sem Medo.'),
    pageBody2('assets/imag/luke.jpg', 'Luke Skywalker',
        'Luke Skywalker é um dos Jedi mais lendários do universo de Star Wars. Após passar por parte de seu treinamento com o Mestre Yoda em Dagobah, Luke aprendeu a dominar a Força e foi uma peça fundamental na luta da Aliança Rebelde contra o Império de Darth Sidious (ou Palpatine para os íntimos) e Darth Vader'),
    pageBody3('assets/imag/Yoda.png', 'Mestre Yoda',
        'Yoda nasceu 896 anos antes de batalha de Yavin, tida pelos fãs de Star Wars como o "marco zero" da saga, já que é o grande acontecimento do primeiro filme.Antes dos 100 anos, ele já havia se sagrado um mestre Jedi, e nas palavras dele, treinou estes guerreiros por 800 anos.'),
  ];

  void _changeStep(bool nextPage) {
    if (_page < 2 && nextPage) {
      setState(() {
        _page++;
      });
      _stepFormController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      (_stepFormController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App Page'),
      ),
      body: PageView.builder(
          controller: _stepFormController,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return _pagesList[index];
          }),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
          child: Text('Anterior'),
          onPressed: () => _changeStep(false),
        ),
        pageIndicator(_page == 0),
        pageIndicator(_page == 1),
        pageIndicator(_page == 2),
        TextButton(
          child: Text('Proximo'),
          onPressed: () => _changeStep(true),
        ),
      ]),
    );
  }
}
