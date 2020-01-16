# Films subscription platform
-----------------------------

In this README I explain the general concept proof that I tried to implement.


## Approaches

1. fast_jsonapi VS AMS

This gem is ridiculous faster than traditional implementation with AMS (See: https://medium.com/@raj.b.stretz/active-model-serializer-vs-fast-json-api-serializer-8338b939f01f), it's also designed to support multiple instrumentations, and different JSON resolvers making serializer a lot flexible.

2. Build API instead of using --api-only flag.

I wanted to show you than even by executing this special flag, there still are unnecesary things we should take off in case you're building an API only with Rails, specially cutting down the amount of default frameworks Rails takes at setting-up the project.
