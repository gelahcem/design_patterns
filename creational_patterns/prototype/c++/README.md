## Before

The architect has done an admirable job of decoupling the client from Stooge concrete derived classes, and, exercising polymorphism. But there remains coupling where instances are actually created.

## After

A clone() method has been added to the Stooge hierarchy. Each derived class implements that method by returning an instance of itself. A Factory class has been introduced that maintains a suite of "breeder" objects (aka prototypes), and knows how to delegate to the correct prototype.

## Prototype design pattern demo

Discussion. Image base class provides the mechanism for storing, finding, and cloning the prototype for all derived classes. Each derived class specifies a private static data member whose initialization "registers" a prototype of itself with the base class. When the client asks for a "clone" of a certain type, the base class finds the prototype and calls clone() on the correct derived class.
