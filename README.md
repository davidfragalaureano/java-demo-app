# java-demo-app

This is a simple Maven Spring Boot Application, exposing two endpoints `/` and `/ping`.

Clone this repository and run: 

```docker
  docker build -t java-demo .
```

Then:
```docker
  docker run -d -p 8080:8080 java-demo 
```

Visit `localhost:8080/` or `localhost:8080/ping` and you'll see on your explorer:

`
This is just a simple app in spring boot
`
