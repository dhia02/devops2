
pipeline {
    agent any
    
    stages {

        stage('Maven clean install') {
            steps {
                // Cette étape va nettoyer et compiler le projet avec Maven
                sh 'mvn clean install'
            }
        }

        // stage('SonarQube analyse') {
        //     steps {
        //        script {
        //     withSonarQubeEnv(installationName: 'sq1') {
        //         sh 'mvn sonar:sonar'
        //     }
        // }
                
        //     }
        // }

        stage('Mockito & JUnit test') {
            steps {
               script {
                sh 'mvn clean'
              }
                
            }
        }

        // stage('Nexust') {
        //     steps {
        //        script {
        //         sh 'mvn deploy -DskipTests=true'
        //       }
                
        //     }
        // }

//         stage('Build et Push Docker Image') {
//     steps {
//         script {
//             // Construire l'image Docker
//             sh 'docker build -t admin351/events:latest .'
//         }
//     }
// }
//         stage('Push vers DockerHub') {
//     steps {
//         script {
//             sh 'docker push admin351/events:latest'
//         }
//     }
// }


        stage('Docker-compose') {
            steps {
               script {
                sh 'docker compose up -d'
              }
                
            }
        }

        
   

    
    }
      }
