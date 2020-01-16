# Films subscription platform
-----------------------------

This README.md contains information about my approach to solve this challenge, it justifies some implementations and shows all needed information to set and run it.

## Approaches

1. fast_jsonapi VS AMS

This gem is ridiculous faster than traditional implementation with AMS (See: https://medium.com/@raj.b.stretz/active-model-serializer-vs-fast-json-api-serializer-8338b939f01f), it's also designed to support multiple instrumentations, and different JSON resolvers making serializer a lot flexible.

2. Build API instead of using --api-only flag.

I wanted to show you than even by executing this special flag, there still are unnecesary things we should take off in case you're building an API only with Rails, specially cutting down the amount of default frameworks Rails takes at setting-up the project.

## API documentation

This API responds only to *application/json* format, it doesn't have authentication or perform authorization on resources, it's completely open to non-auth users requests. 

### Movies, Seasons and Both.
~~~
  HTTP GET /api/v1/films
~~~

It will return Movies and Seasons with their respective attributes and associations, in case you need to specify what resource you need (Movie or Season) you'll need to pass the param **resource** saying your resource requested.

- ?resource=movie
- ?resource=season

~~~
  HTTP GET /api/v1/films?resource=movie
~~~

It will return Movies only

~~~
  HTTP GET /api/v1/films?resource=season
~~~

It will return Seasons only


### Purchases

~~~
  HTTP POST /api/v1/purchases
~~~

**Params**

```JSON
    {
        "purchase": {
            "purchase_option_id": 12,
            "user_id": 2
        }
    }
```

### Library

~~~
  HTTP GET /api/v1/library
~~~
