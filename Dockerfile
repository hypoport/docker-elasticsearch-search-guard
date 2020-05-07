FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.6

RUN bin/elasticsearch-plugin install -b https://github.com/vvanholl/elasticsearch-prometheus-exporter/releases/download/6.8.6.0/prometheus-exporter-6.8.6.0.zip
RUN bin/elasticsearch-plugin install -b com.floragunn:search-guard-6:6.8.6-25.5

# workaround to avoid file mounts
RUN mkdir -p /usr/share/elasticsearch/config/overrides \
  && mv /usr/share/elasticsearch/config/elasticsearch.yml /usr/share/elasticsearch/config/overrides \
  && ln -s /usr/share/elasticsearch/config/overrides/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
