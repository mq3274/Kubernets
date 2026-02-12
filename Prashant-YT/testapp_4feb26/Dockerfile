FROM node:20

WORKDIR /myapp

COPY package*.json ./

COPY . .  

#  pehle dot ka matlb cuurent directoyry of laptop....dusre dot ka mtlb hai container ki current directoyry

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]