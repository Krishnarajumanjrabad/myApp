FROM node:10.19.0

COPY . /www/app

RUN npm install -g @cordova/cli @ionic/cli @angular/cli


WORKDIR /www/app
RUN npm install

EXPOSE 8100

ENTRYPOINT ["ionic"]
CMD ["serve", "8100", "--address", "0.0.0.0"]