public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup() {
  for(int i = 0; i < e.length() - 9; i++) {
    String digits = e.substring(i, i + 10);
    double num = Double.parseDouble(digits);
    if(num < 10) {
      num *= 1000000000;
    }
    if(isPrime(num) == true) {
      println(num);
      break;
    }
  }
}

public boolean isPrime(double num) {   
  boolean prime = true;
  if(num < 2) {
    prime = false;
  }
  for(int i = 2; i <= (int)(Math.sqrt(num)); i++) {
    if(num % i == 0) {
      prime = false;
    }
  }
  return prime;   
} 
