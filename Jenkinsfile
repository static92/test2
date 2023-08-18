pipeline {
environment {
registry = "static92/lol"
registryCredential = 'c09e718d-0db5-4216-9bec-1b3420a55471'
dockerImage = ''
}
agent any
stages {
stage('Cloning our Git') {
steps {
git 'https://github.com/static92/test2.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
}
}
}
stage('Run') {
steps{
sh "docker run -it -d static92/lol:$BUILD_NUMBER"
}
}
}
}
