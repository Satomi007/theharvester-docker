FROM kalilinux/kali-rolling:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl net-tools theharvester python3-pip
RUN pip install --upgrade pip
RUN pip install requests
RUN export uid=1000 gid=1000
RUN mkdir -p /home/kali-user
RUN echo "kali-user:x:${uid}:${gid}:kali-user,,,:/home/kali-user:/bin/bash" >> /etc/passwd
RUN echo "kali-user:x:${uid}:" >> /etc/group
RUN echo "kali-user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod 0440 /etc/sudoers
RUN chown ${uid}:${gid} -R /home/kali-user
USER kali-user
ENV home /home/kali-user
ENTRYPOINT ["theHarvester"]