FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.2

RUN bin/elasticsearch-plugin install -b https://distfiles.compuscene.net/elasticsearch/elasticsearch-prometheus-exporter-6.3.2.0.zip
RUN bin/elasticsearch-plugin install -b com.floragunn:search-guard-6:6.3.2-23.1
