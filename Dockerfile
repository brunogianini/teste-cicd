# Use a imagem oficial do Node.js
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos de dependência e instala
COPY app/package*.json ./
RUN npm install

# Copia o restante do código para o container
COPY app/ .

# Expõe a porta utilizada pelo serviço
EXPOSE 8080

# Comando para iniciar o serviço
CMD ["node", "index.js"]