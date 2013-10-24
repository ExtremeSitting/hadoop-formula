include:
  - hadoop-formula.hadoop.mine

{% set nets=salt['mine.get']('*','network.interfaces') %}
{% for n in nets %}
{{ n }}:
  host:
    - present
    - ip: {{ nets[n]['eth1']['inet'][0]['address'] }}
{% endfor %}
