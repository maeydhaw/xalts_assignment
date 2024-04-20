# Running in Local - Details

## Prerequisites

1) Docker installed in your system
2) AWS account created
3) Terraform installed in your system
4) Access key and Secret key to create the infrastructure

1) Clone the repository in local
2) Go inside the folder RESTAPI
3) Build the docker file using the command
```bash
docker build -t my-rest-api .
```
It would look something like this

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/9f251ad7-2644-4cb9-a228-46e1aafeab65)

4)  Run the application using docker by this command
```bash
docker run -d -p 5000:5000 my-rest-api
```
It would look something like this

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/45cf9853-87c1-4ae1-adee-2cde8d45d6a0)

5) Open the browser and hit the url
   It would look like this

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/8be3eb9c-9c71-4d40-8024-90ad9d273b5b)

# Postman - Optional

If you hit the same URL using GET call in Postman app, it will show the following results.

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/b87cf441-41ef-422e-b49d-53a26d4b1aa8)

