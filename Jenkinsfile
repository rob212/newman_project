pipeline {
    agent any
    stages {
        stage("run newman") {
            steps {
                sh "docker run -v ~/collections:/etc/newman -t postman/newman Restful_Booker_Collection.postman_collection.json -e restful_booker.postman_environment.json"
            }
        }
    }
}