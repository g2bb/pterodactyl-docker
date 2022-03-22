FROM ubuntu:20.04
ENV FQDN=""
ENV firstname=""
ENV lastname=""
ENV email=""
ENV username=""
ENV password=""

ADD https://raw.githubusercontent.com/g2bb/pterodactyl-docker/master/install-panel.sh /pterodactyl.sh
ADD https://raw.githubusercontent.com/g2bb/pterodactyl-docker/master/install-wings.sh /wings.sh

RUN ["chmod", "+x", "/pterodactyl.sh"]
RUN ["chmod", "+x", "/wings.sh"]

CMD ./pterodactyl.sh ${FQDN} ${firstname} ${lastname} ${email} ${username} ${password}
CMD ./wings.sh ${FQDN} ${email} ${password}
