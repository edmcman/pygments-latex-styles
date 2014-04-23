int c = 0, sum = 0;
while (c > 0) {
  if (c%2 == 0) sum += c;
  c--;
}
assert (sum == input);
