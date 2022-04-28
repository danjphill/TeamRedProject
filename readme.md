## Team Red Project

This is the interactive user interface for Team Red's Project for COMP6940 Group Project!

Source Code Availibe Here! - https://github.com/danjphill/TeamRedProject2/

### How to Use
![alt text](https://raw.githubusercontent.com/danjphill/teamredproject/master/preview.gif "Interactive Page in Motion")

1. Select a customer from the drop down to see the recommendations for that customer. 

1. Click "View Purchases" to see what they purchased which would have contributed to their predictions. 

1. From there you can click "View Recommendations" to see what they were recommended based on their purchases. 

### Installation

First install Docker. You can download it here https://docs.docker.com/get-docker/ 

Next clone or download this repo to your computer. 

Navigate inside the folder `cd teamredproject`

Next execute `docker image build -t teamredproject .` to build the container. 

Once the install is complete execute `docker run -p 5005:5005 -t teamredproject`

Open the browser and go to `http://localhost:5005` to view the interactive model. 


### Notes

This docker file imports the code used to build the interactive user interface which can be found in the repo here https://github.com/danjphill/TeamRedProject2/

Use the docker container to ensure it deploys correctly. 
