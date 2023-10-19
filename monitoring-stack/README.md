# Tempo


# Profiling
## Pyroscope

## Loki

# Tracing

## Opentelemetry collector / Jaeger

Setup:

![tracing](/docs/tracing.jpg)

Exemplars:
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

