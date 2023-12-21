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
        
        stage('Generate Jacoco Report') {
            steps {
                sh 'lynx target/site/jacoco/index.html'
            }
        }
        
        stage('Scan with SonarQube') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
stage('Code Test Case Generation'){
            steps{
                script{
                    
                    sh '''
                    cat src/main/java/com/mt/services/EmployeeService.java | sgpt --code " generate unit test cases with junit " > CodeTest.java
                    '''
                   
                    
                    
                }
            }
            
            post{
                success {
                    archiveArtifacts artifacts: '**/CodeTest.txt'
                }
            }
}

stage("Documentation Generation"){
            steps{
                script{
                    
                        sh "cat src/main/java/com/mt/services/EmployeeService.java | sgpt \"generate detailed code documentation for this code\" --no-cache > JavaDocument.txt"
          
                    
                }
            }
            post{
                success {
                    archiveArtifacts artifacts: 'Document.txt'
                }
            }
}
        
    }
}
