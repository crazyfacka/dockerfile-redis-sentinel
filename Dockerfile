FROM redis:latest

RUN \
	cd /etc && \
	mkdir redis && \
	cd redis && \
	curl -O http://download.redis.io/redis-stable/sentinel.conf

ENTRYPOINT ["redis-sentinel", "/etc/redis/sentinel.conf"]
EXPOSE 26379
