float r(float theta, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m * theta / 4.0)/a), n2) + 
    pow(abs(sin(m * theta / 4.0)/b), n3), -1.0/n1);
}