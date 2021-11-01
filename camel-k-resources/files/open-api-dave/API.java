import org.apache.camel.builder.AggregationStrategies;
import org.apache.camel.builder.RouteBuilder;

public class API extends RouteBuilder {
    @Override
    public void configure() throws Exception {
        // Get
        from("direct:greeting-id")
                .setBody()
                .simple("Hello ${headers.name}")
                .to("log:info");

    }
}

// kamel run API.java --property file:api.properties --open-api openapi.yaml --trait route.tls-termination=edge
// https://api-camel-k-resources.apps.okd.baloise.dev/v1/dave