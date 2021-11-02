package greetings

// Simple Camel k OpenAPI example. Uses groovy to define the route.

// Run with:
// kamel run --name greetings --open-api files/greetings/greetings-api.json files/greetings/greetings.groovy --trait route.tls-termination=edge

from('direct:greeting-api')
        .to('log:api?showAll=true&multiline=true')
        .setBody()
        .simple('Hello from ${headers.name}')

