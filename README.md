docker build -t aralvesandrade/fullcycle .
docker push aralvesandrade/fullcycle
docker run --rm --name fullcycle aralvesandrade/fullcycle
