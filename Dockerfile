FROM redis:latest

RUN \
	cd /etc && \
	mkdir redis && \
	cd redis && \
	curl -o - http://download.redis.io/redis-stable/sentinel.conf | sed '/mymaster/d' > sentinel.conf

ENTRYPOINT ["redis-sentinel", "/etc/redis/sentinel.conf"]
EXPOSE 26379
