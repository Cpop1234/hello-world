pipeline {
    agent any

    environment {
        AWS_REGION = "us-east-1"
        EKS_CLUSTER = "demo-cluster"
        DOCKER_IMAGE = "your-dockerhub-username/webapp:latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/webapp-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push Image to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh 'kubectl apply -f k8s-deployment.yml'
                sh 'kubectl apply -f k8s-service.yml'
            }
        }
    }
}
