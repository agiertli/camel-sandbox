{{/*
Expand the name of the chart.
Used in labels to identify the chart.
*/}}
{{- define "integration-bus.name" -}} # Updated helper name
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
Used for resource names, based solely on the Release.Name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "integration-bus.fullname" -}} # Updated helper name
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart's labels
*/}}
{{- define "integration-bus.labels" -}} # Updated helper name
app.kubernetes.io/name: {{ include "integration-bus.name" . }} # Use the chart name helper
helm.sh/chart: {{ include "integration-bus.chart" . }} # Updated helper name
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Release.IsUpgrade }}
# Explicitly quote the revision to ensure it's a string
app.kubernetes.io/revision: "{{ .Release.Revision | toString }}"
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: {{ include "integration-bus.name" . }} # Use the chart name helper
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "integration-bus.selectorLabels" -}} # Updated helper name
app.kubernetes.io/name: {{ include "integration-bus.name" . }} # Use the chart name helper for selector
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Chart version
*/}}
{{- define "integration-bus.chart" -}} # Updated helper name
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
