pipeline {
    agent any
stages {
    stage('Clone') {
        steps {
            git url: 'https://github.com/johnmoses/jenkins-docker-compose-flask', branch: 'main'
        }
    }
    stage('Build') {
                steps {
                    sh 'docker-compose build'
                }
            }
    stage('Test') {
            steps {
                sh 'docker-compose up -d'
                sh 'sleep 5'
                sh 'curl http://localhost:5001 || true'
                sh 'docker-compose down'
            }
        }
    stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}