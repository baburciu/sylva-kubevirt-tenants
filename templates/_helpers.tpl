{{/* labels of the resources of a tenant: tuple $ $tenant */}}
{{- define "kubevirt-tenants.labels" -}}
app.kubernetes.io/managed-by: {{ (index . 0).Release.Service }}
app.kubernetes.io/name: {{ (index . 0).Chart.Name }}
sylva.org/kubevirt-tenant: {{ index . 1 }}
{{- end -}}
