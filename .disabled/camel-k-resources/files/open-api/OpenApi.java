import org.apache.camel.builder.AggregationStrategies;
import org.apache.camel.builder.RouteBuilder;

public class OpenApi extends RouteBuilder {
    @Override
    public void configure() throws Exception {
        // Get
        from("direct:greeting-id")
                .setBody()
                .simple("Hello ${headers.name}")
                .to("log:info");

    }
}