/home/hdfs/.ssh/id_rsa:
  file.managed:
    - source: salt://hadoop-formula/ssh_keys/id_rsa
    - user: hdfs
    - group: hdfs
    - mode: 600

/home/mapred/.ssh/id_rsa:
  file.managed:
    - source: salt://hadoop-formula/ssh_keys/id_rsa
    - user: mapred
    - group: mapred
    - mode: 600

/home/hdfs/.ssh/authorized_keys:
  file.managed:
    - source: salt://hadoop-formula/ssh_keys/id_rsa.pub
    - user: hdfs
    - group: hdfs
    - mode: 600

/home/mapred/.ssh/authorized_keys:
  file.managed:
    - source: salt://hadoop-formula/ssh_keys/id_rsa.pub
    - user: mapred
    - group: mapred
    - mode: 600

