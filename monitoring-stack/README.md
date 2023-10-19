# Tempo


# Profiling
## Pyroscope

## Loki

# Tracing

## Opentelemetry collector / Jaeger

### Setup:

![tracing](docs/tracing.jpg)


### Tempo vs otel collector / jaeger

* backend
  * Jaeger
    * ElasticSearch
    * Cassandra
    * kafka
  * Grafana Tempo
    * S3
    * GCS Object storage
    * Azure Blob Storage
* frontend
  * Grafana Tempo
    * Grafana
  * Jaeger
    * Jaeger
    * Grafana

### Exemplars

[Exemplars](https://grafana.com/docs/grafana/latest/fundamentals/exemplars/):
* metric / trace correlation
* cardinality issues
  * part of OpenMetrics standard
  * adds trace_id to exposed request metrics
  * each scrape get last trace_id
* LTS
  * exemplars are stored in-memory
  * increase buffe size can increase retention - will be short-lived

# Alternative to Grafana dashboards

## perses
<https://github.com/perses/perses>

> Perses is part of the CoreDash community. It belongs to the Linux Foundation. At a later stage, we want to promote the project to the Cloud Native Computing Foundation and be part of the monitoring tools like Prometheus or Thanos.

> ... Perses is still in an early alpha stage ...

* dashboard engine with in mind GitOps
  * dashboards, datasources, ... as code
  * currently just compatible with Prometheus
  * migration toolkit to convert dashboards from Grafana to Perses
  * panel types:
    * Time series charts.
    * Gauge panels.
    * Stat panels (single value with sparkline).
    * Markdown panels (as an alternative to the Text panel)

