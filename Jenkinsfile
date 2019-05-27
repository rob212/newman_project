pipeline {
    agent { docker { image 'postman/newman'}}
    stages {
        stage("run newman") {
            steps {
                sh "newman run Restful_Booker_Collection.postman_collection.json -e restful_booker.postman_environment.json"
            }
        }
    }
}