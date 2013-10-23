/root/hosts:
  file.managed:
    - source: salt://hadoop-formula/hosts_file/hosts.sls
    - template: jinja
    - user: root
    - group: root
    - mode: '0644'


{% set nets=salt['mine.get']('*','network.interfaces') %}
{% for n in nets %}
{{ n }}:
  host:
    - present
    - ip: {{ nets[n]['eth1']['inet'][0]['address'] }}
{% endfor %}
