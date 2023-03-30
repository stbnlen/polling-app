# Usar Python 3.10
FROM python:3.10

# Establecer el directorio de trabajo
WORKDIR /code

# Copiar el archivo de requerimientos
COPY requirements.txt .

# Instalar los requerimientos
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY . .

# Establecer la variable de entorno FLASK_RUN_HOST
ENV FLASK_RUN_HOST=0.0.0.0

# Establecer el comando por defecto
CMD ["flask", "run"]
