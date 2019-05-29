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
                sh "docker run -v src:/etc/newman -v src:/etc/postman -t rob212/cop_newman run collections/simple.postman_collection.json -e environments/restful_booker.postman_environment.json --reporters html --reporter-html-export 'reports/index.html'"
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