# Usar una imagen base con Python
FROM python:3.8-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del directorio local al contenedor
COPY . /app

# Instalar las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará Streamlit
EXPOSE 8501

# Ejecutar la aplicación Streamlit
CMD ["streamlit", "run", "app.py"]
