<h1 align="center">Email Subscriber API</h1>

## Author

:man: Julian Belmonte

- Github: [Julian Belmonte](https://github.com/jucora)
- Twitter: [@Julian Belmonte](https://www.twitter.com/JulianBelmonte)
- Linkedin: [Julian Belmonte](https://www.linkedin.com/in/julianbel)

## :pencil: Main Description

This test consists of developing an API with Ruby on Rails to send registration information to emails using Mailchimp as the Email Service Provider.

The use of Dockerfile / Docker-compose was implemented to be able to run the app locally, as well as the implementation of Redis and Sidekiq for process handling.

This application connects to an app developed in ReactJS, which can be found at the following link:[Email Subscriber App](https://github.com/jucora/email-app)

## How to install the App

1. Please clone the repository by running the next comand in your machine:

<pre><code>git clone https://github.com/jucora/email-api.git</code></pre>

2. Get into the folder of the project by running the next command:

<pre><code>cd email-api</code></pre>

3. Next, run the next command to install all gems:

   <pre><code>bundle install</code></pre>

4. Create and migrate the database:

   <pre><code>rails db:create db:migrate</code></pre>

5. Start your local server by running the next command:

   <pre><code>rails server</code></pre>

Note: you can select another port if you wish. Just keep in mind that it has to be a different port from the app port.

## How to create a Docker image to be run locally

1. Make sure you are located in the root of the project and run the next command to generate the Docker images needed:

<pre><code>docker-compose up -d</code></pre>

2. You should see a similar output like the next one:

![](images/create_services.png)

3. You can also check the current processes by running the next command:

<pre><code>docker-compose logs</code></pre>

    And you should see something similar to this:

![](images/services.png)

4. You can run the next command to make sure all containers are running:

<pre><code>docker-compose ps</code></pre>

5. You should see a similar output like the next one:

![](images/containers.png)

    Note: make sure that each container states is UP.

6. Run the next in your browser, and you are good to go:

<pre><code>localhost:3000</code></pre>

## :computer: Library, Languages and technologies

- Ruby on Rails
- PostgreSQL
- Redis
- Sidekiq
- Docker
- Docker-compose
- Mailshimp

## Report Issues

Please feel free to make a contribution, report any issue, feature request or provide any feedback. Click [here](https://github.com/jucora/email-api/issues)

## Support

Feel free to drop a like, that would support me a lot.
