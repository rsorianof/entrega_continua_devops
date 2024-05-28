# .PHONY indica que 'all' y cualquier objetivo en MAKECMDGOALS no son archivos reales
.PHONY: all $(MAKECMDGOALS)

# La directiva 'run' ejecuta un contenedor de Docker con Python 3.6-slim.
# Monta el directorio actual en /opt/app dentro del contenedor,
# establece PYTHON_PATH a /opt/app, y ejecuta el script main.py con argumentos.
run:
	docker run --rm --volume `pwd`:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py words.txt yes

# La directiva 'local' ejecuta el script main.py localmente sin usar Docker.
local:
	python3 main.py words.txt yes
