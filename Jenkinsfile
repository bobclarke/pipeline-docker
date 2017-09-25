node(){

    String jdkTool = tool name: 'JDK8', type: 'hudson.model.JDK'
    String repo = 'https://github.com/bobclarke/pipeline-docker.git'

    checkout(repo)
    checkout("my_tomcat")
}

private void checkout(String repo){
    stage('checkout'){
        println "Checking out code"
        checkout([
            $class: 'GitSCM',
            branches: [[name: '*/master']],
            userRemoteConfigs: [[
                credentialsId: 'bobclarke-git',
                url: repo
            ]]
        ])
    }
}

private void createDockerImage( String imageName ){
	sh 'sudo docker build -t $imageName .'
}

private void runDockerContainer(){
	sh 'sudo docker run -p 9999:8080 -d --name tomcat my_tomcat.'
}
