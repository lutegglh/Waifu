ADD file:37744639836b248c88f6e126619829290b45c233309538310e8fffb82e98eaf8 in /
CMD ["bash"]
RUN /bin/sh -c bash /run/secrets/secretxt # buildkit
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
