{{- define "flask-chart.name" -}}
flask-chart
{{- end -}}

{{- define "flask-chart.fullname" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

{{- define "flask-chart.labels" -}}
app.kubernetes.io/name: {{ include "flask-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end -}}