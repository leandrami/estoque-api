# - Imagem base oficial do Node.js
FROM node:20-alpine

# - Diretório dentro do container
WORKDIR /app

# - Cópia do package.json e package-lock.json (cache)
COPY package*.json ./

# - Instalação do Node
RUN npm install

# - Cópia do restante do código-fonte para o container
COPY . .

# - Porta utilizada pela API
EXPOSE 3000

# - Comando que inicia o servidor
CMD ["node", "server.js"]