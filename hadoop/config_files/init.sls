include:
  - hadoop-formula.hadoop.users_and_dirs

/etc/hadoop/conf/core-site.xml:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/core-site.xml
    - user: hdfs
    - group: hadoop
    - mode: 644
    - require:
      - sls: hadoop-formula.hadoop.users_and_dirs

/etc/hadoop/conf/hdfs-site.xml:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/hdfs-site.xml
    - user: hdfs
    - group: hadoop
    - mode: 644

/etc/hadoop/conf/mapred-site.xml:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/mapred-site.xml
    - user: hdfs
    - group: hadoop
    - mode: 644

/etc/hadoop/conf/taskcontroller.cfg:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/taskcontroller.cfg
    - user: hdfs
    - group: hadoop
    - mode: 644

/etc/hadoop/conf/masters:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/masters
    - user: hdfs
    - group: hadoop
    - mode: 644

/etc/hadoop/conf/slaves:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/slaves
    - user: hdfs
    - group: hadoop
    - mode: 644

/etc/hadoop/conf/hadoop-env.sh:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/core_hadoop/hadoop-env.sh
    - user: hdfs
    - group: hadoop
    - mode: 644


/etc/pig/conf/log4j.properties:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/pig/log4j.properties
    - user: pig
    - group: hadoop
    - mode: 644

/etc/pig/conf/pig-env.sh:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/pig/pig-env.sh
    - user: pig
    - group: hadoop
    - mode: 644

/etc/pig/conf/pig.properties:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/pig/pig.properties
    - user: pig
    - group: hadoop
    - mode: 644

/etc/hive/conf/hive-site.xml:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/hive/hive-site.xml
    - user: hive
    - group: hadoop
    - mode: 644

/etc/hive/conf/hive-env.sh:
  file.managed:
    - source: salt://hadoop-formula/hadoop/config_files/hive/hive-env.sh
    - user: hive
    - group: hadoop
    - mode: 644

