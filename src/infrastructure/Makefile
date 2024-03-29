LOCAL_FOLDER := cd ./local/

# Assuming you have a Makefile with the following content
start:

# Development Targets/ local machine
# -------------------

build-dev: 
	$(LOCAL_FOLDER) &&  docker-compose build

build-dev-nc: 
	$(LOCAL_FOLDER) &&  docker-compose build --no-cache

build-dev-progress: 
	$(LOCAL_FOLDER) &&  docker-compose build --no-cache --progress=plain

clean-dev: 
	$(LOCAL_FOLDER) &&  docker-compose down --rmi="all" --volumes

down-dev: 
	$(LOCAL_FOLDER) &&  docker-compose down --volumes --remove-orphans

run-dev: down-dev
	$(LOCAL_FOLDER) && docker-compose up