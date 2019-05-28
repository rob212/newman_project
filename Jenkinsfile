pipeline {
    agent any
    stages {
        stage("build project") {
            steps {
                sh "docker build -t rob212/cop_newman -f Dockerfile ."
            }
        }
        stage("run newman") {
            steps {
                sh "docker run -t rob212/cop_newman run simple.postman_collection.json -e restful_booker.postman_environment.json -r html --reporter-html-export report/index.html"
            }
        }
        stage("generate report") {
            steps {
                sh "newman-reporter-html"
                publishHTML (target: [
                    reportDir: 'report',
                    reportFiles: 'index.html',
                    reportName: "Newman API Report"
                ])
            }
        }
    }
}