{{- define "elixier-stream.wait-kafka" }}
- name: wait-kafka
  image: "{{ .Values.kubectl_image.repository }}:{{ .Values.kubectl_image.tag }}"
  imagePullPolicy: {{ .Values.kubectl_image.pullPolicy }}
  args: ["wait", "pod", '{{ include "elixier-stream.fullname" . }}-kafka-s-0', '--for=condition=containersready', '--timeout={{ .Values.containerWaitTimeout }}']
{{- end }}

