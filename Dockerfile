# ---------- FASE 1: RESOLUCIÓN DE DEPENDENCIAS ----------
FROM python:3.11-slim AS builder

WORKDIR /app

# Evita generación de .pyc y buffer en logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

# Instala dependencias en un directorio específico
RUN pip install --upgrade pip && \
    pip install --prefix=/install --no-cache-dir -r requirements.txt


# ---------- FASE 2: EJECUCIÓN ----------
FROM python:3.11-slim

WORKDIR /app

# Copiamos solo las dependencias ya instaladas
COPY --from=builder /install /usr/local

# Copiamos código fuente
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
