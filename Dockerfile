# 1. Usar una imagen base de Node.js
FROM node:14

# 2. Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# 3. Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# 4. Instalar las dependencias
RUN npm install

# 5. Copiar el código fuente de la aplicación al contenedor
COPY . .

# 6. Exponer el puerto donde la aplicación estará escuchando
EXPOSE 3000

# 7. Ejecutar la aplicación
CMD ["npm", "start"]

