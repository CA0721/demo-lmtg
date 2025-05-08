FROM polar0721/cpmlx:heroku

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN pip3 install --no-cache-dir pip setuptools wheel --upgrade && \
    pip3 install --no-cache-dir pymediainfo==6.0.1 && \
    pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
