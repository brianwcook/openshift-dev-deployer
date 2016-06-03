# openshift-dev-deployer
Deploys an all in one Openshift instance in Amazon EC2 using cloud-init and then runs an optional user config script.

Prerequisites:

Place the AWS config files in $HOME/.aws:

    $ $HOME/.aws/config
    $ [default]
    $ aws_access_key_id = [your key]
    $ aws_secret_access_key = [your key]

    $ # $HOME/.aws/credentials
    $ [default]
    $ region = us-west-2


Currently the script deploys producction Openshift Enterprise 3.2.  In the future it will be a choice to deploy OSE on RHEL or Origin on CentOS, but this is not implemented yet.  

You need your Red Hat customer user ID and password.
You also need a pool id to register your RHEL instance.  You can get it from subscription manager on another RHEL server.

The script will configure Openshift all-in-one running containerized in EC2.  The point is to be able to provision dev environments quickly.  You can run a user provided script, this script will run INSIDE the Openshift container which means it runs with cluster admin privileges.  You should use this script to configure your Openshift applications.

The script will cache your settings in your home directory to make it easy to run repeatedly.
