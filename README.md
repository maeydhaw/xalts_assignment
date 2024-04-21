

## Prerequisites

1) Docker installed in your system
2) AWS account created
3) Terraform installed in your system
4) Access key and Secret key to create the infrastructure

## Running in Local - Details

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

# Running the Terraform file

This Terraform configuration file provisions an AWS EC2 instance and runs a Dockerized REST API on it.

## Prerequisites

- Terraform installed on your machine
- AWS CLI configured with access key and secret key

## Usage

1. Clone the repository:

```bash
git clone https://github.com/your-repo.git
cd xalts_assignment
```
2. Initialize Terraform
```bash
terraform init
```
3. Review and apply the Terraform configuration:
```bash
terraform plan
terraform apply
```
5. Access your REST API:Once the Terraform apply is successful, you can access your REST API at
```bash
http://<ec2-public-ip>:5000
```
6. Replace **your_access_key_id** and **your_secret_access_key** with your AWS access key ID and secret access key respectively. Adjust the region (us-west-2), AMI ID (ami-XXXXXXXXXXX), and any other parameters as needed for your setup.

# After running terraform scripts

# AWS Instance and Security Group

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/42c4d41e-79e3-4f80-8e7c-97041bbbf4b3)

# Live App from EC2 instance

![image](https://github.com/maeydhaw/xalts_assignment/assets/88104259/b4a0aeec-3a6c-472f-a24e-73efe4352611)

