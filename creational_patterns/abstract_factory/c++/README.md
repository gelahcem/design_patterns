# Discussion
"Think of constructors as factories that churn out objects". Here we are allocating the constructor responsibility to a factory object, and then using inheritance and virtual member functions to provide a "virtual constructor" capability. So there are two dimensions of decoupling occurring. The client uses the factory object instead of "new" to request instances; and, the client "hard-wires" the family, or class, of that factory only once, and throughout the remainder of the application only relies on the abstract base class.

## Output

ellipse 0: draw
rectangle 1: draw
ellipse 2: draw
