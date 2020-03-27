copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\support\eureka-server\target\eureka-server-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\core\product-service\target\product-service-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\core\recommendation-service\target\recommendation-service-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\core\review-service\target\review-service-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\composite\product-composite-service\target\product-composite-service-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
copy C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\support\edge-gateway\target\edge-gateway-0.0.1-SNAPSHOT.jar C:\Users\prabhakaran.nivanil\eclipse-workspace\microservices_project\product-review\z-last-jars\
timeout /t 4

start java -jar eureka-server-0.0.1-SNAPSHOT.jar
timeout /t 10

start java -jar edge-gateway-0.0.1-SNAPSHOT.jar
timeout /t 10

start java -jar product-service-0.0.1-SNAPSHOT.jar
timeout /t 2
start java -jar recommendation-service-0.0.1-SNAPSHOT.jar
start java -jar review-service-0.0.1-SNAPSHOT.jar
start java -jar product-composite-service-0.0.1-SNAPSHOT.jar