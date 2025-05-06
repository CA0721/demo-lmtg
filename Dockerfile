FROM polar0721/cpmlx:heroku

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN pip3 install --no-cache-dir pip setuptools wheel --upgrade && \
    pip3 install --no-cache-dir pymediainfo==6.0.1 && \
    pip3 install --no-cache-dir -r requirements.txt

# Expone el puerto 80
EXPOSE 80

# Modifica el comando de inicio para usar el puerto 80
CMD ["bash", "start.sh"]
