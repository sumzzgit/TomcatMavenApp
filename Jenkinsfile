pipeline{
    agent any
    tools{
        git 'git'
        maven 'maven'
    }
    triggers{
        githubPush()
    }
    stages{
        stage("git-checkout"){
            steps{
                git branch: 'master', credentialsId: 'git-creds', url: 'https://github.com/sumzzgit/TomcatMavenApp.git'
            }
        }
        stage("build"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("archive-artifact"){
            steps{
                archiveArtifacts artifacts: '**/*.war'
            }
        }
    }
}
