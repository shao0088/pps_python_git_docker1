# pps_python_git_docker1
# La Bayeta de la Fortuna 

Aplicación web sencilla al estilo de galleta de la fortuna o servilleta
de bar.

Cada vez que se ejecuta, muestra un mensaje aleatorio.

## Instalación y ejecución

### Requisitos
- Python 3.10 o superior
- Git

### Clonar el repositorio
```bash
git clone https://github.com/shao0088/pps_python_git_docker1.git
```
```bash
cd pps_python_git_docker1
```
### Crear entorno virtual
```bash
python3 -m venv venv
source venv/bin/activate
```
### Instalar dependencias 
```bash
pip install -r requirements.txt
```
### Ejecutar app.py
```
python3 app.py
```

## Ejecutar con Docker

1. Construir imagen:
```bash
   docker build -t bayeta:1.0 .
```

2. Ejecutar contenedor:
```bash
   docker run -p 5000:5000 bayeta:1.0
```

3. Acceder en navegador:
- http://127.0.0.1:5000
- http://127.0.0.1:5000/frotar/n(numeros de frases)
