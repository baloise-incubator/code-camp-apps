from('timer:tick?period=3000')
    .setBody().constant('Hello world from Camel K Groovy')
    .to('log:info')