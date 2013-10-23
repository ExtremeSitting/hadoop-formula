/etc/salt/minion:
  file.append:
    - text: |


        mine_functions:
          grains.item:
            - fqdn  
          network.ip_addrs: []
          network.interfaces: []

salt-minion:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - reload: True
    - watch:
      - file: /etc/salt/minion
      - pkg: salt-minion

salt-call mine.update:
  cmd.run

#{% set nets=salt['mine.get']('*','network.interfaces') %}
#{% for n in nets %}
#{{ n }}:
#  host:
#    - present
#    - ip: {{ nets[n]['eth1']['inet'][0]['address'] }}
#{% endfor %}
