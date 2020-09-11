docker rm -f $(docker ps -a | grep "test_docker_travis_testflask" | awk '{print $1}')
cd flask-demo
docker build -f ./flask-demo.Dockerfile -t docker_travis_demo:latest .

