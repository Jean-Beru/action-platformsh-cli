FROM jeanberu/docker-platformsh-cli:v3.60.4

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
