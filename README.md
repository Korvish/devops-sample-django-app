<h1>Party Parrot App</h1>
<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3>Deployment</h3>
<h5>Copy the application to your local computer</h5>
download and extract the application or use Git

```shell
git clone https://github.com/Korvish/devops-sample-django-app
```
</br>

<h5>In project directory create a directory to save data (database and pictures)</h5> 

```shell
mkdir -p data/uploads && chown 1000:1000 data/uploads
```

</br>
Install Docker and Compose plugin
https://docs.docker.com/engine/install
</br>
</br>
<i>If the user does not have enough rights to execute commands, they will need to be run with administrator rights.</i>
</br>
<h5>Deploy with docker</h5>
run commands:

```shell
docker-compose build
```
```shell
docker-compose up -d
```

<br>
<br>
<h3>The application will run on http://localhost:8080/</h3>
<br>
<br>
<h5>Attention!</h5>

File parrotsite/settings.py has been modified, add line
</br>
```
CSRF_TRUSTED_ORIGINS = ['http://*.localhost:8080','http://*.127.0.0.1:8080']
```