# Utiliza una imagen base de Node.js
FROM node:latest

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu aplicación al directorio de trabajo
COPY package.json ./
COPY server.js ./
COPY index.html ./

# Instala las dependencias de tu aplicación
RUN npm install

# Expone el puerto en el que tu aplicación escuchará
EXPOSE 8080

# Comando predeterminado para iniciar tu aplicación
CMD ["node", "server.js"]
