pipeline {

    agent any
    environment{
       PASS = credentials('dockerhub-pass')
}
    stages {

            stage('Build') {
                steps {
                    sh '''
                        ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                        ./jenkins/build/build.sh
                        '''
                    }
                            }
            stage('Test') {
                steps {
                    sh './jenkins/test/mvn.sh mvn test'
                }
    }

            stage('Push') {
                steps {
                    sh './jenkins/push/push.sh'
                    sh './jenkins/push/push-k8s.sh'
                }
            }
}
}
