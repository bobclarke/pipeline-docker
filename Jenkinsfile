node(){

    String jdkTool = tool name: 'JDK8', type: 'hudson.model.JDK'
    String repo = 'https://github.com/bobclarke/pipeline-docker.git'

    my_checkout(repo)
}

private void my_checkout(String repo){
    stage('test_checkout'){
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
