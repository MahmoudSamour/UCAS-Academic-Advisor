# مستشار الأكاديمي UCAS
## يهدف هذا المشروع إلى تطوير مستشار أكاديمي يستند إلى محرك الأسئلة والأجوبة باستخدام Rasa لمساعدة الطلاب في تحديد أفضل خيار للدراسة في الكلية الجامعية UCAS.

تعليمات التشغيل
تحتاج إلى تحميل Docker على جهاز الكمبيوتر الخاص بك.

بعد التنزيل والتثبيت ، اتبع هذه التعليمات:

انتقل إلى مجلد المشروع



`cd <مسار المشروع>`


تحقق من موقع مجلد المشروع الحالي



```pwd```


قم بإعادة تسمية ملف Dockerfile - API إلى Dockerfile

قم بإنشاء Docker image باستخدام الأمر التالي:



```docker build -t rasa-api .```


قم بتشغيل Docker container باستخدام الأمر التالي:



```docker run -it --rm -p 5005:5005 --name rasa-api rasa-api```


قم بإعادة تسمية ملف Dockerfile إلى Dockerfile - API

في نافذة ترمينال جديدة ، انتقل إلى مجلد المشروع



```cd <مسار المشروع>```


قم بإعادة تسمية ملف Dockerfile - actions إلى Dockerfile

قم بإنشاء Docker image باستخدام الأمر التالي:


```docker build -t rasa-actions .```


قم بتشغيل Docker container باستخدام الأمر التالي:


```docker run -it -p 5055:5055 --name rasa-action-server rasa-actions```


قم بإعادة تسمية ملف Dockerfile إلى Dockerfile - actions

لاختبار Rasa ، استخدم الأمر التالي:


`curl -X POST "http://localhost:5005/webhooks/rest/webhook" -H "Content-Type: application/json" -d '{"message":"مرحبا"}'`



## لإيقاف Rasa ، استخدم الأمر التالي لعرض جميع Docker containers:

```docker ps```
استخدم الأمر التالي لإيقاف Docker container بناءً على <container-id>:


  
`docker stop <container-id>`

  
  
`docker rm <container-id>`


# UCAS-Academic-Advisor
UCAS-Academic-Advisor

CD PWD

rename "Dockerfile - API" -> "Dockerfile"

docker build -t rasa-api .

docker run -it --rm -p 5005:5005 --name rasa-api rasa-api

rename "Dockerfile" -> "Dockerfile - API"




open another terminal

rename "Dockerfile - actions" -> "Dockerfile"

docker build -t rasa-actions .

docker run -it -p 5055:5055 --name rasa-actions rasa-actions

rename "Dockerfile" -> "Dockerfile - actions"


# Test RASA
curl -X POST "http://localhost:5005/webhooks/rest/webhook" -H "Content-Type: application/json" -d '{"message":"مرحبا"}'


# Stop Rasa
docker ps

docker stop <container-id>

docker rm <container-id>
