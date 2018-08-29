float probabilityDistZ(int power, int range) {
  return -map(pow(random(-1, 1), power), -1, 1, -range, range);
}