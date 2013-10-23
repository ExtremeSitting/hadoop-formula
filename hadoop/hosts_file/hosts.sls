{%- set nets=salt['mine.get']('*','network.interfaces') -%}
{%- for n in nets -%}
{{ nets[n]['eth1']['inet'][0]['address'] }}    {{ n + '\n' }}
{%- endfor %}

