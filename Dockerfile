FROM debian:9.5-slim


# Label
LABEL "com.github.actions.name"="Execute remote ssh commands"
LABEL "com.github.actions.description"="Connect to a remote server and execute ssh commands"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

LABEL "repository"="http://github.com/AEnterprise/execte-ssh"
LABEL "homepage"="https://github.com/AEnterprise/execte-ssh"
LABEL "maintainer"="AEnterprise <aenterprise@aenterprise.info>"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]