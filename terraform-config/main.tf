/*
DONE
vpc
nat gateway or be lazy and make everything public?
internet gateway
default route
subnet for fargate - private
subnet for alb x2 - public 
ecr repository
ecs cluster

TODO

ecs service def
ecs task def - maybe define inline with codebuild to terraform doesn't freak out like it does?
iam roles like crazy
fargate setup
security group for access
aws alb

codebuild - build
codebuild - test
codebuild - deploy
codebuild - post-deploy acceptance test
codepipeline webhook - https://gist.github.com/joestump/cac3abb94050186fcba1c57c8a880a71

ecs rolling update style doesn't require codedeploy


use codedeploy for blue/green deployments?
- need two task definitions
- need two target groups
- 

lookup codebuild log output

TODO lucidchart diagram of pieces

outputs:
alb endpoint
*/

provider "aws" {
    region = "${var.aws_region}"
}

# get account id
data "aws_caller_identity" "current" {}