void main() {

  print( greetEveryone() );
  
  print( 'Suma: ${ addTwoPositionalNumbers( 10, 20 ) }' );
  
  print( addPersonNamedParameters( name: 'Isaac', message: 'Hi,' ) );
  
}


String greetEveryone() => 'Hello everyone!';

int addTwoPositionalNumbers( int a, int b ) => a + b;

int addTwoPositionalAndOptionalNumbers( int a, [ int b = 0 ]) {
//   b ??= 0;
  return a + b;
}


String addPersonNamedParameters({ required String name, String message = 'Hola,' }) {
  
  return '$message Fernando';
}









