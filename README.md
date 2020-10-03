# Slot machine backoffice

## Push to ECR
- docker build -t slot-machine .
- docker tag slot-machine:latest 439912061784.dkr.ecr.us-east-1.amazonaws.com/slot-machine:latest
- aws ecr get-login --no-include-email --region us-east-1
- copy paste login
- docker push 439912061784.dkr.ecr.us-east-1.amazonaws.com/slot-machine:latest



## Heroku Deployment

### Login to heroku 
heroku login

### Fix web server
heroku labs:enable --app=slot-machine-selfieart runtime-new-layer-extract

### Login to heroku container registry
heroku container:login

### Build and Push Docker image to heroku registry 
heroku container:push web -a slot-machine-selfieart

### Release
heroku container:release web -a slot-machine-selfieart

heroku labs:enable --app=web runtime-new-layer-extract