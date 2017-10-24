# Prototype design pattern

    1.-Create a "contract" with clone() and getName() entries
    2.-Design a "registry" that maintains a cache of prototypical objects
    3.-Populate the registry with an initializePrototypes() function
    4.-The registry has a findAndClone() "virtual constructor" that can transform a String into its correct object (it calls clone() which then calls "new")
    5.-All classes relate themselves to the clone() contract
    6.-Client uses the findAndClone() virtual ctor instead of the "new" operator
