function foo(x:int):int{
  if (x < 0) {
    return 0; // Handle negative input
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main():void {
  echo foo(5);
  echo foo(-5); //Test with negative input
}

This improved version adds a check for negative input values. If the input `x` is negative, it returns 0, preventing infinite recursion. 