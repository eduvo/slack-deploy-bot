module SlackDeployBot
  ABOUT = <<-ABOUT
    SlackDeployBot - version #{SlackDeployBot::VERSION}
    Usage:
    `about` - show this message
    `changelog my-awesome-app#feature` - show *changelog* for your branch against *master* branch
    `deploy my-awesome-app` - deploy my-awesome-app default branch to default environment
    `deploy my-awesome-app to prod` - deploy my-awesome-app default branch to prod environment
    `deploy my-awesome-app#my-feature to staging` - deploy my-awesome-app my-feature branch to prod environment
  ABOUT
end
