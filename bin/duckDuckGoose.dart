class player {
  String name;
  player(this.name);
}

String duckDuckGoose(List<player> players, int goose) {
  int index = (goose - 1) % players.length;
  return players[index].name;
}

void main() {
  List<player> list = [
      player("a"), 
      player("b"), 
      player("c"),
      player("d"),
   ];
  print(duckDuckGoose(list, 1)); //a
  print(duckDuckGoose(list, 5)); //a
  print(duckDuckGoose(list, 4)); //d
}
