function foo(x:int):int{
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main():void {
  echo foo(5);
}

This code has a potential stack overflow error if the input x is a large negative number. The recursive call `foo(x - 1)` will continue indefinitely because the condition `x == 0` will never be met.  Hack will eventually run out of stack space, resulting in a crash. 