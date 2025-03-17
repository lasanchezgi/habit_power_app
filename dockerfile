# Usa una imagen base de Python
FROM python:3.13.1-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /habit_power_app

# Copia los archivos de tu proyecto al contenedor
COPY . /habit_power_app

# Instala dependencias (si tienes un requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que corre la app (ajústalo si es necesario)
EXPOSE 5000

# Comando por defecto para ejecutar la app
CMD ["python", "habit_power_app.py"]
