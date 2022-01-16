# Introduction

This app was created to return the difference between the earliest and latest unix timestamp in terms of years.

## Assumption

The code was written assuming that the timestamp was to be sent in a POST request as an array in JSON format.

## Instruction

### Access via Heroku
The API can be accessed at https://unix-time-endpoint.herokuapp.com/api/v1/year
>example: curl -d '{"time":[1642362684,1610797884, 632490684]}' -H 'Content-Type: application/json' -X POST https://unix-time-endpoint.herokuapp.com/api/v1/year  

This will return:  
>The difference between the earliest and the latest unix timestamp is 32 years.%

### Access Locally

To run this locally, Ruby v2.7.4 and Rails v6 has to be installed in the system.
The repo can be cloned from: https://github.com/josheng/fs-rails-endpoint-unix-time

For initial setup on local host, ensure that both Ruby and Rails are installed.
Then, run the following command to setup the dependencies:
>bundle install  
>rails db:create

The following command will start a local Rails server @ http://localhost:3000:
>rails s

The API then can be accessed via http://localhost:3000/api/v1/year
