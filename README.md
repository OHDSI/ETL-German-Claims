# P21-to-OMOP

This repository contains the dockerized version of the ETL process to convert P21 data to OMOP. Please install a OMOP-Database in cdm version **5.3.1** before starting the job.

## Preparation ##

Please place the input data in the folder */input/data*. You can navigate to this folder and check the readme file to verify the needed file names. They must comply with the defined requirements.

## Configuration ##

You can configure the job via the **.env** file.

| Variable          | Description                                   |
| -----------       | -------                                       |
| DATABASE_IP       | IP or DNS of the host serving the database    |
| DATABASE_PORT     | The port the database is listening on         |
| DATABASE_NAME     | The name of the OMOP database                 |
| DATABASE_SCHEMA   | The schema of the OMOP tables                 |
| DATABASE_USER     | The user of the OMOP database                 |
| DATABASE_PASSWORD | The password of the OMOP user                 |
| OMOP_NETWORK      | The Docker network name if you want to connect to the db via Docker |
| VAR_PARALLEL      | execute the job in paralel (default false)    |
| INIT_MEMORY       | The starting memory alloc of the JVM          |
| MAX_MEMORY 	    | The maximum memory alloc of the JVM           |


## Starting the job ##

`docker-compose up`

## Removing the container if needed ##

`docker-compose down -v`
