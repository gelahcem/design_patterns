# Builder design pattern demo

## Discussion.
The forte of Builder is constructing a complex object step by step. An abstract base class declares the standard construction process, and concrete derived classes define the appropriate implementation for each step of the process. In this example, "distributed work packages" have been abstracted to be persistent and platform independent.

This means that the platform-specific mechanism for implementing files, queues, and concurrency pathways is defined in each platform's concrete derived class. A single "reader" object (i.e. parser) retrieves the archived specification for a DistrWorkPackage and proceeds to delegate each build step to the builder object that was registered by the client. Upon completion, the client retrieves the end result from the builder.
