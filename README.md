This task aims to create two containers one represents a server container that creates a repository that has binary files of httpd and its dependencies. The other container is a client container that copies the repository to it and use it to install httpd. Additionally, there is a shell script checks whether apache is installed on the client container.

To run Server container:
run a shell script named runContainer.sh in the Server package  which builds and runs the Server container.

To run Client container:
run a shell script named runContainer.sh in the Client package  which builds and runs the Client container.

To Validate:
run a shell script name testhttpd.sh in the Validation package to check whether httpd is installed on the client container or not.
