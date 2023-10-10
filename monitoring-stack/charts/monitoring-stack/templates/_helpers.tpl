{{- define "monitoring.common.labels" -}}
app.kubernetes.io/name: monitoring-stack
app.kubernetes.io/part-of: bdop
{{- end -}}

{{- define "monitoring.prometheus.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: prometheus
{{- end -}}

{{- define "monitoring.alertmanager.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: alertmanager
{{- end -}}

{{- define "monitoring.grafana.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: grafana
{{- end -}}

{{- define "monitoring.thanosQuerier.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: thanos-querier
{{- end -}}

{{- define "monitoring.thanosRuler.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: thanos-ruler
{{- end -}}

{{- define "monitoring.blackboxExporter.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: blackbox-exporter
{{- end -}}

{{- define "monitoring.pushgateway.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: pushgateway
{{- end -}}

{{- define "monitoring.cmdb.labels" -}}
{{ printf (include "monitoring.common.labels" . ) }}
app.kubernetes.io/component: cmdb
{{- end -}}
