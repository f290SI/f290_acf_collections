// Lista tipada
List<String> prequelsStarWars = [
  'Episódio I - A Ameaça Fantasma',
  'Episódio II - O Ataque dos Clones',
  'Episódio III - A Vingança dos Sith'
];

var starWars = [
  'Episódio VI - Uma Nova Esperança',
  'Episódio V - O Império Conta-Ataca',
  'Episódio VI - O Retorno do Jedi'
];

// Lista por inferencia
var filmesPrequelsMap = {
  1999: prequelsStarWars[0],
  2002: prequelsStarWars[1],
  2005: prequelsStarWars[2],
};

// Mapa tipado
Map<int, String> starWarsMap = {
  1977: starWars[0],
  1980: starWars[1],
  1983: starWars[2],
};

// Mapa por inferencia
Map<int, dynamic> filmesAtuaisStarWarsMap = {
  2015: 'Episódio VII - O Despertar da Força',
  2017: 'Episódio VIII - Os Últimos Jedi',
  2019: 'Episódio IX - A Ascensão Skywalker'
};

//TODO: Sound Null Safety com atributos
/*
Ao declararar o atributo year com a interrogação, estamos declarando o tipo
int nullable, ou seja que permite armazenar o null no atributo.

Esta classe poossui apenas metodos, nao possui um construto que possa inicializar
o atributo year.

Por este motivo, se voce remover a interrogaçao da declaracao, a compilacao ira falhar.

Remova-a e teste...
*/
int? year;

void main(List<String> arguments) {
  /**
   * Para cada secao verificada, troque as chamadas de funcao aqui no metodo main().
   * 
   * Assim ficara mais facil para voce acompanhar os exemplos.
   */
  _playgroundNullSafety();
}

//TODO: Sound Null Safety com variáveis locais
_playgroundNullSafety() {
  // Nesta lista exite um valor null, remova a interrogaçao e a compilacao falhara.
  List<int?> inteiros = [1, 2, 3, 4, null, 5, 6, 7, 8, 9];

  /**
   * Abaixo, temos os operadores null-aware.
   * 
   * Cada um dos prints utiliza uma alterativa com os operadores 
   * para minimizar a possibilidade de null pointers.
   * 
   * Descomente-as para verificar seu funcionamento detalhadamente.
   */
  for (var i in inteiros) {
    // IF-NULL
    print(i ?? 'Null aqui!');
    // Atribuicao NULL-AWARE
    // print(i ??= 0);
    // Chamada segura NULL-AWARE
    // print(i?.toStringAsFixed(2));
    // Validacao com operador ternario
    // print(i == null ? 'Vixi... Temos um nul aqui!' : i.toStringAsFixed(2));
  }
}

//TODO: Operações em Listas
_playgroundListas() {
  // Adicionar uma 2 elementos à lista de prequels num unico comando.
  prequelsStarWars.addAll([
    'Han Solo - Uma História Star Wars',
    'Rogue One - Uma História Star Wars'
  ]);

  // Remover o quarto elemento da lista
  prequelsStarWars.removeAt(3);

  // Adicionar um elemento ao final da lista.
  prequelsStarWars.add('Velha Republica');

  // Adicionar um novo elemento a partir da terceira posicao da lista.
  prequelsStarWars.replaceRange(3, 3, ['Han Solo - Uma História Star Wars']);

  // Obter um elemento da lista na quarta posicao.
  var hs = prequelsStarWars[3];

  // Validar se o objeto hs esta contido na lista
  print('Han Solo esta contido prequels? ${prequelsStarWars.contains(hs)}');

  // Validar se dentre os objetos da lista, algum deles possui o conteudo [Sith].
  print(
      'A Vinganca dos Sith esta contida nas prequels? ${prequelsStarWars.any((e) => e.contains('Sith'))}');

  // Validar se dentre os objetos da lista, todos eles possuem o conteudo [Sith].
  print(
      'Todos os item sao... ? ${prequelsStarWars.every((e) => e.contains('Sith'))}');

  // Percorrer a lista imprimindo o conteudo.
  for (var f in prequelsStarWars) {
    print(f);
  }

  // Criar uma nova lista de Spin-Offs com base na lista existente
  List<String> spinOffs = prequelsStarWars
      .where((e) => e.contains('História')) // Realiza um fitro dos elementos
      .map((e) => e.split('-')[
          0]) // Cria(mapeia) um novo elemento com base na divisao do conteudo realizada pelo split e armazena o primeiro elemento da divisao do texto
      .toList(); // Gera uma nova lista com base nos elementos filtrados e mapeados(modificados).
  print(spinOffs);

  // Criacao de lista de nomes para ordenacao
  var nomes = ['Jose', 'Maria', 'Andre'];

  // Execucao de operacoa de ordenacao da lista
  nomes.sort();

  // Exibicao de lista ordenada
  print(nomes);

  // Cricao de lista de objetos do tipo Pessoa
  var pessoas = [
    Pessoa(nome: 'Jose', idade: 15),
    Pessoa(nome: 'Maria', idade: 45),
    Pessoa(nome: 'Andre', idade: 25)
  ];

  // Ordenacao da lista de Pessoas com base na idade utilizando Comparable
  pessoas.sort(((a, b) => a.idade.compareTo(b.idade)));

  // Exibicao de lista ordenada por idade
  print(pessoas);
  // Exibicao de lista ordenada de forma descendente com base no atributo reversed
  print(pessoas.reversed);

  // Obter indice de um elemento em uma lista
  int indexHS = prequelsStarWars.indexOf(hs);
  // Obter indice de um elemento em uma lista com base em uma condicional
  int indexHSWhere = prequelsStarWars.indexWhere((e) => e.contains('Han Solo'));
  print('Indice Han Solo: $indexHSWhere');
}

//TODO: Operações em Mapas
_playgroundMapas() {
  // Keys, Values e Entries

  // Adicionar uma nova entrada a um mapa validando sua existencia
  filmesAtuaisStarWarsMap.putIfAbsent(
      2025, () => 'Episódio X - Dart Bane: A Regra de Dois');

  // Adicionar uma nova entrada a um mapa
  filmesAtuaisStarWarsMap[2026] = 'Episódio XI - A Origem da Velha Republica';

  print('Ano de lançamento dos filmes atuais com base nas keys.');
  // Exibir as chaves de um mapa
  filmesAtuaisStarWarsMap.keys.forEach(print);

  print('\nFilmes atuais com base em values.');
  // Exibir os valores de um mapa
  filmesAtuaisStarWarsMap.values.forEach(print);

  print('\nFilmes atuais com base em entries.');
  // Exibir as entradas de um mapa
  filmesAtuaisStarWarsMap.entries.forEach(((e) {
    print('Chave: ${e.key} - Valor: ${e.value}');
  }));

  // Atualizar uma entrada em um mapa
  filmesAtuaisStarWarsMap.update(
      2025, ((value) => 'Dart Bane: Uma História Star Wars'));

  print('\nFilmes atuais com base nas keys e values.');
  // Exibir as chaves e vbalores de um mapa
  filmesAtuaisStarWarsMap.forEach((key, value) {
    print('$key: $value');
  });

  // Gerar uma lista com base na iteracao de um mapa.
  var filmesFuturos = filmesAtuaisStarWarsMap.entries
      .where((e) => e.key > 2019) // Filtro condicional
      .map((e) => e.value) // Geracao de novo valor
      .toList(); // Geracao de lista

  // Verificar se mapa contem uma chave especifico
  print(filmesAtuaisStarWarsMap.containsKey(2019));

  // Verificar se mapa contem um valor especifico
  print(filmesAtuaisStarWarsMap.containsValue(filmesAtuaisStarWarsMap[2019]));

  // Adicionar todos os mapas de filmes ao map todosFilmes
  Map<int, dynamic> todosFilmes = {};
  todosFilmes.addAll(filmesPrequelsMap);
  todosFilmes.addAll(starWarsMap);
  todosFilmes.addAll(filmesAtuaisStarWarsMap);

  // Lisatagem dos filmes no mapa odosFilmes
  print('\nTodos os filmes.');
  todosFilmes.forEach((key, value) {
    print('Ano de Lançamento: $key - Título: $value');
  });
}

//TODO: Operações em Sets

// Cricao de SET com itens duplicados aos quais serao ignorados pelas caracteristicas do Set.
_playgroundSets() {
  Set<String> linguagens = {
    'Dart',
    'Kotlin',
    'Swift',
    'Java',
    'PHP',
    'Dart',
    'Kotlin'
  };

  linguagens.add('Python');

  // Listagem do Set sem os elementos duplicados
  print(linguagens);

  // Criacao de Sets adicionais para operacoes adicionais
  var linguagensVelhaGuarda = {'C', 'Visual Basic', 'C++', 'Delphi'};
  var linguagensPoo = {'PHP', 'Java', 'C++'};

  // Operacao de unicao entre Sets, todos os elementos dos 2 sets
  var union = linguagens.union(linguagensVelhaGuarda);
  // Operacao de intersecao entre Sets; apenas elementos contidos nos 2 sets
  var intersection = linguagens.intersection(linguagensPoo);

  // Listagem dos sets apos operacoes
  print('UNION\n$union\n');
  print('INTERSECTION\n$intersection\n');
}

//TODO: Desafio - One Ring To Rule Them All...
/*
  Criar uma Mapa em que a chave seja o ano de lançamento e o título do filme 
  seja o conteudo para os filmes da saga [ O Senhor dos Aneis].

  Apos sua criação, realize as seguintes tarefas:

    1. Exiba o ano de lançamento de cada filme;
    2. Exiba o título de cada filme contido no Mapa;
    3. Exiba o título de cada filme seguido do ano de lançamento.
    4. Crie uma lista a partir do Mapa que contenha os filmes prequels (a partir de 2012).
    5. Crie uma lista a partir do Mapa que contenha os filmes original (anteriores à 2012).
    6. Exiba as 2 listas criadas.
    7. Adicione a série [ Anéis do Poder ] ao Mapa;
    8. Liste o Map completo.
    9. Remova a serie adicionada.
    10. Liste o Map completo.
*/

class Pessoa {
  var nome = '';
  int idade = 0;
  Pessoa({
    required this.nome,
    required this.idade,
  });

  @override
  String toString() => 'Pessoa(nome: $nome, idade: $idade)';
}
