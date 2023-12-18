pipeline {
    agent any
    
    stages {
        stage('Clone') {
            steps {
                git branch: 'development', url: 'https://github.com/AbhishekRaoV/devopspoc.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }
}
