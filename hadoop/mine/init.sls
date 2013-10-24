include:
  - hadoop-formula.hadoop.config_files

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
