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

void main(List<String> arguments) {}

//TODO: Sound Null Safety com variáveis locais
_playgroundNullSafety() {}

//TODO: Operações em Listas
_playgroundListas() {}

//TODO: Operações em Mapas
_playgroundMapas() {}

//TODO: Operações em Sets
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


