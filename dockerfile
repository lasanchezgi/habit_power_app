# Usar una imagen base de Python
FROM python:3.13-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Instalar Poetry de manera global
RUN pip install --no-cache-dir poetry

# Copiar los archivos del proyecto al contenedor
COPY . .

# Configurar Poetry para no usar entornos virtuales
RUN poetry config virtualenvs.create false

# Instalar las dependencias con Poetry
RUN poetry install --no-interaction --no-root

# Instalar Flask explícitamente en el entorno global
RUN pip install flask

# Verificar la instalación de Flask
RUN flask --version

# Exponer el puerto en el que correrá Flask
EXPOSE 3000

# Definir el comando para ejecutar Flask en modo desarrollo
CMD ["sh", "-c", "export FLASK_APP=main && flask run --host=0.0.0.0 --port=3000 --debug"]