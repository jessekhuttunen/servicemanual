# Service Manual Project

## Overview
This is a demo project with a backend implementation using Java and Spring Boot. Purpose of this project is to have REST API which meets the following requirements:
* You must be able to create a new maintenance task.
* You must be able to update an existing maintenance task.
* You must be able to assign maintenance task to a factory device.
* You must be able to delete an existing maintenance task.
* You must be able to fetch all the maintenance tasks.
* You must be able to fetch maintenance tasks related to specific factory device.
* Fetched maintenance tasks must be sorted primarily by their classification and secondarily by their entry time (from the newest to the oldest).

## Database
Application is using H2 database. As the application starts, the database is populated by INSERT queries located in *data.sql* file (servicemanual/src/main/resources).

## Testing
### Starting the application
Testing of the API can be done with cURL for example, just follow these steps (Windows):

1. Open command prompt from root directory of service manual project. (.../servicemanual)
2. Start the application with command:
```console
mvnw spring-boot:run
```
3. Open a new command prompt from root directory.
4. Insert your cURL commands (you can look for examples below).

### cURL command examples
Here are some example cURL requests.

#### Get every factory device in the database:
```console
curl http://localhost:8080/factorydevices
```

#### Get factory device with specific ID:
```console
curl http://localhost:8080/factorydevices/1
```

#### Get every maintenance task in the database:
```console
curl http://localhost:8080/tasks
```

#### Get maintenance tasks relating to a specific factory device.
```console
curl http://localhost:8080/factorydevices/1/tasks
```
###### Example above should return every maintenance task from the factory device with an ID of 1.

#### Add new maintenance task:
```console
curl -d "{ \"entryTime\": 1640988000000, \"description\": \"New maintenance task\", \"classification\": \"MINOR\", \"taskCompleted\": false }" -H "Content-Type: application/json" -X POST http://localhost:8080/tasks
```

###### In example above, we are adding a new maintenance task to the database with the information below:
* entryTime = *1640988000000 (representing 01/01/2022, 00:00)*
* description = *New maintenance task*
* classification = *MINOR*
* taskCompleted = *false*

POST request also returns the created maintenance task.

#### Update an existing maintenance task:
```console
curl -d "{ \"classification\": \"MAJOR\" }" -H "Content-Type: application/json" -X PUT http://localhost:8080/tasks/6
```
###### In example above, we are updating classification of the maintenance task with an ID of 2.

#### Assign maintenance tasks to a specific factory device.
```console
curl -X PUT http://localhost:8080/tasks/6/factorydevice/3
```
###### In example above, we are assigning maintenance task with an ID of 6 to a factory device with an ID of 3.

PUT requests also returns the updated maintenance task.

#### Delete maintenance task:
```console
curl -X DELETE http://localhost:8080/tasks/3
```
###### In example above, we are deleting a maintenance task with an ID of 3.

DELETE request also returns the deleted maintenance task.

### H2 Console
Changes to the database can also be verified with H2 Console. Console can be opened by inserting URL below to your browser:

`http://localhost:8080/h2-console`

This opens a login page where you can just press **Connect**, and it opens up a webpage where you can see manage your database and make SQL queries.

### Unit tests
There area also some unit tests implemented for FactoryDevice and MaintenanceTask classes. Purpose of these tests is only to verify basic functionality on GET, POST, PUT and DELETE requests.