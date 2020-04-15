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
Container logs will be something like this:
```bash

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.2.6.RELEASE)

2020-04-15 06:34:25.958  INFO 1 --- [           main] com.david.demo.JavaAppDemoApplication    : Starting JavaAppDemoApplication v0.0.1-SNAPSHOT on 7312fa65feb1 with PID 1 (/h
ome/app/demo.jar started by root in /home/app)
2020-04-15 06:34:25.968  INFO 1 --- [           main] com.david.demo.JavaAppDemoApplication    : No active profile set, falling back to default profiles: default
2020-04-15 06:34:27.959  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2020-04-15 06:34:27.983  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2020-04-15 06:34:27.984  INFO 1 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.33]
2020-04-15 06:34:28.079  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2020-04-15 06:34:28.079  INFO 1 --- [           main] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 1959 ms
2020-04-15 06:34:28.353  INFO 1 --- [           main] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
2020-04-15 06:34:28.739  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2020-04-15 06:34:28.747  INFO 1 --- [           main] com.david.demo.JavaAppDemoApplication    : Started JavaAppDemoApplication in 3.723 seconds (JVM running for 4.722)
2020-04-15 06:34:28.984  INFO 1 --- [nio-8080-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2020-04-15 06:34:28.984  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2020-04-15 06:34:28.993  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 8 ms
^C2020-04-15 06:37:41.963  INFO 1 --- [extShutdownHook] o.s.s.concurrent.ThreadPoolTaskExecutor  : Shutting down ExecutorService 'applicationTaskExecutor'
```


Visit `localhost:8080/` or `localhost:8080/ping` and you'll see on your explorer:

`
This is just a simple app in spring boot
`
