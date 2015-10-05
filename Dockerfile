FROM sensu

MAINTAINER Rob Wilson <roobert@gmail.com>

ENV TRANSPORT_NAME=
ENV RABBITMQ_URL=
ENV REDIS_URL=
ENV SENSU_API_PORT=

ENV LOG_LEVEL=info
ENV SENSU_GEMS_VERSION=2.0.0

# use embedded ruby..
ENV PATH /opt/sensu/embedded/bin:/sensu/plugins:/sensu/handlers:/sbin:/usr/sbin:/bin:/usr/bin
ENV GEM_PATH /opt/sensu/embedded/lib/ruby/gems/${SENSU_GEMS_VERSION}

EXPOSE 4567

CMD /opt/sensu/embedded/bin/sensu-api --log_level $LOG_LEVEL
