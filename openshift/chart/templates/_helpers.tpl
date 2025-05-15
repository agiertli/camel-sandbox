{{/*
Expand the name of the chart.
*/}}
{{- define "camel-mqtt-export.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
This version uses only the Release.Name.
*/}}
{{- define "camel-mqtt-export.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart's labels
*/}}
{{- define "camel-mqtt-export.labels" -}}
app.kubernetes.io/name: {{ include "camel-mqtt-export.name" . }}
helm.sh/chart: {{ include "camel-mqtt-export.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Release.IsUpgrade }}
app.kubernetes.io/revision: {{ .Release.Revision | toString }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: camel-mqtt-export # Add a part-of label
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "camel-mqtt-export.selectorLabels" -}}
app.kubernetes.io/name: {{ include "camel-mqtt-export.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Chart version
*/}}
{{- define "camel-mqtt-export.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
