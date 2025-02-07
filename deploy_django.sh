#!/bin/bash

<<task
Deploy a django app
and handle the code for errors
task

code_clone() {
         echo "Cloning the Django app..."
         git clone https://github.com/anjalikota10/django-notes-app.git
 }

install_requirements() {
        echo "Installing dependencies"
        sudo apt-get install docker.io nginx -y
 }

required_restarts() {
          sudo systemctl enable docker
          sudo systemctl enable nginx
}

deploy() {
        docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}


echo "******* Deployment Started *******"
if ! code_clone; then
        echo "the code directory already exists"
        cd django-notes-app
fi

if ! install_requirements; then
        echo "Installation Failed"
        exit 1
fi

required_restarts

if ! deploy; then
        echo "deployment failed, mailing the admin"
        #sendmail
        exit 1
fi


echo "******* Deployment Done *******"
