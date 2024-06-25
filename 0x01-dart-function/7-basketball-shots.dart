int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = calculatePoints(teamA);
  int pointsB = calculatePoints(teamB);

  if (pointsA > pointsB) {
    return 1;
  } else if (pointsA < pointsB) {
    return 2;
  } else {
    return 0;
  }
}

int calculatePoints(Map<String, int> team) {
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointers = team['2 pointers'] ?? 0;
  int threePointers = team['3 pointers'] ?? 0;

  return freeThrows + (2 * twoPointers) + (3 * threePointers);
}