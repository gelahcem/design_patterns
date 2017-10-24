# Before

In this example we render a tabular data read from a file into a GUI table. The requirement of this job is to be able to pick a different GUI implementation in run time.

This is the code BEFORE we applied the Builder pattern.

Note: for the sake of simplicity of comparison between BEFORE and AFTER, we have made all important classes internal, so that they can live together in one file. This is not a pattern limitation.

# After

The main() creates a reader/parser, and configures it with a builder (an object that implements a standard interface and knows how to create one of many possible "results". The reader reads and parses the common input and delegates the construction to the configured builder.

This implementation demonstrates the spirit of the Builder pattern, but it is more intricate, and probably cannot be justified for this fairly limited context.

# Output
Country name	ISO-code-2	ISO-code-3
United States of America	US	USA
Germany	DE	DU
France	FR	FRA
