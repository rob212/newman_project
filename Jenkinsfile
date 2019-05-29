pipeline {
    agent any
    stages {
        stage("run newman") {
            steps {
                sh "docker-compose up --build"
            }
        }
        stage("generate report") {
            steps {
                publishHTML (target: [
                    reportDir: 'reports',
                    reportFiles: 'index.html',
                    reportName: "Newman API Report"
                ])
            }
        }
    }
}