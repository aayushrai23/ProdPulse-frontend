FROM mysql:8.0

# Install aws-cli and jq using Oracle Linux package manager
RUN microdnf install -y awscli jq && \
    microdnf clean all

COPY mysql-entrypoint.sh /mysql-entrypoint.sh
RUN chmod +x /mysql-entrypoint.sh

ENTRYPOINT ["/mysql-entrypoint.sh"]
