# pathfinder-infra
Infrastructure tools for Pathfinder app.

### Dependencies
* terraform
* docker
* docker-compose

### Using Localstack
    docker-compose up

That's it, you're done. You can stop it with Ctrl-C. Use the scripts in other repos to "provision" infra in this local environment.

### Creating a cheapo EC2 instance to run a database
`ec2.tf` does this. Note that the script refers to a security group "db" and a key pair "DB dev". You'll need to create these separately in AWS and possibly edit
the file to reflect whatever names you chose. The SG should allow traffic on the mysql and ssh ports, using the key pair you provisioned for the ssh key.

With those resources in place, run

    terraform init
    terraform apply

Terraform will give you the public IP of your EC2 instance and the JDBC connection string. Wait a few minutes for the user-data.sh script to finish, then SSH into the instance.
Consult the file `finish.sh` for how to initialize the mysql server. (Despite the extension, `finish.sh` is really another readme). You'll need to create a database called "pathfinder" and a user with remote access to the database.
Remember the username and password. If you forgot the connection string, use `terraform output jdbc_connection_string`.
