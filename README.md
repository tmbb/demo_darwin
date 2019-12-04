# DemoDarwin

An example on how to run.
It needs a local installation of Darwin (the main goal is to iteratively test Darwin, so it doesn't make sense to test the GitHub version...)

It tests an example module, the `Enom` module (together with the `Enomerable` protocol, and other helper modules). The `Enom` module is exactly equal to teh `Enum` module, except that it has been renamed to avoid breaking the language when we mutate it.

Darwin can be used to mutate modules in the standard library, with the caveat that mutating such modules might make it impossible for the test suite to run for a number of reasons.