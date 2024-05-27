# Utiliza una imagen base de Node.js
FROM node:latest

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe) desde tu sistema local al contenedor
COPY package.json package-lock.json* ./

# Instala las dependencias de tu aplicación
RUN npm install

# Copia los archivos de tu aplicación al directorio de trabajo
COPY server.js ./
COPY index.html ./

# Expone el puerto en el que tu aplicación escuchará
EXPOSE 8080

# Comando predeterminado para iniciar tu aplicación
CMD ["node", "server.js"]

