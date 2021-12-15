{{- define "helpers.enabledDefaultTrue" -}}                                                                   
{{- ternary "true" "false" ( or ( .enabled ) ( eq ( .enabled | toString ) "<nil>" ) ) -}}
{{- end -}}                                                                                         
