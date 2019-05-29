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
                sh "docker run --name cop_newman -t rob212/cop_newman run collections/simple.postman_collection.json -e environments/restful_booker.postman_environment.json --reporters html --reporter-html-export 'reports/index.html'"
                sh "docker cp cop_newman:/etc/newman/src/reports/index.html index.html"
            }
        }
        stage("generate report") {
            steps {
                publishHTML (target: [
                    reportFiles: 'index.html',
                    reportName: "Newman API Report"
                ])
            }
        }
        stage("cleanup containers") {
            steps {
                sh "docker container rm -f cop_newman"
            }
        }
    }
}