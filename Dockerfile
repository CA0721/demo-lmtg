FROM polar0721/cpmlx:railway

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .

RUN pip3 install --no-cache-dir pip setuptools wheel --upgrade && \
    pip3 install --no-cache-dir pymediainfo==6.0.1

CMD ["bash", "start.sh"]
