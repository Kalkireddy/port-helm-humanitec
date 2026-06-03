{{- define "demo-node-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "demo-node-app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "demo-node-app.labels" -}}
app.kubernetes.io/name: {{ include "demo-node-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}

{{- define "demo-node-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "demo-node-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
