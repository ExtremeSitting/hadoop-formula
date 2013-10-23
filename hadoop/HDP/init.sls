include:
  - hadoop-formula.hadoop.repos

HDP:
  pkg.installed:
    - pkgs:
      - hadoop
      - openssl
      - snappy
      - snappy-devel
      - lzo
      - lzo-devel

/usr/lib/hadoop/lib/native/Linux-amd64-64/libsnappy.so:
  file.symlink:
    - target: /usr/lib64/libsnappy.so
#    - require:
#      - pkg: snappy
    - order: last
