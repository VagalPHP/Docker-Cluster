FROM node:20.11.1-alpine

# Define o diretorio de trabalho
WORKDIR /app

# Copiar o package.json e package-lock.json para o container
COPY package*.json ./

# Instalar as dependências usando npm
RUN npm install

# Copiar todos os arquivos da aplicação para o diretório de trabalho do container
COPY . .

# Expor a porta que a aplicação irá rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
