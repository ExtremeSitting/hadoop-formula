include:
  - hadoop-formulas.hadoop.ntp

hadoop:
  group.present:
    - system: True

hdfs:
  user.present:
    - fullname: HDFS user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

mapred:
  user.present:
    - fullname: MapReduce user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

pig:
  user.present:
    - fullname: PIG user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

oozie:
  user.present:
    - fullname: OOZIE user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

hive:
  user.present:
    - fullname: HIVE user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

hcat:
  user.present:
    - fullname: HCAT user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

hbase:
  user.present:
    - fullname: HBASE user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

zookeeper:
  user.present:
    - fullname: ZOOKEEPER user
    - shell: /bin/bash
    - groups:
      - hadoop
    - require:
      - group: hadoop

/hadoop/hdfs/nn:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode

/hadoop/hdfs/dn:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 750
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/hadoop/hdfs/snn:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/hadoop/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/hadoop/hdfs:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/hadoop/hdfs:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/hadoop/hdfs/mapred:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/hadoop/mapred:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/hadoop/mapred:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/hive/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/hive:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/hive:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/webhcat:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/webhcat:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/hbase/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/hbase:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/hbase:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/data/zookeeper:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/zookeeper/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/zookeeper:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/zookeeper:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/pig/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/oozie/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/db/oozie:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/log/oozie:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/run/oozie:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/var/tmp/oozie:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

/etc/sqoop/conf:
  file.directory:
    - user: hdfs
    - group: hadoop
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: hdfs
      - group: hadoop

