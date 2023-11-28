void main() {
  bool isActive = false;
  bool isPasswordCorrect = false;
  bool isAuthenticated = isPasswordCorrect && isActive;
  print(isAuthenticated);

}