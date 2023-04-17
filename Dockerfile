FROM rasa/rasa:3.1.2-full
WORKDIR /app
COPY . /app
EXPOSE 5005
CMD ["run", "--enable-api", "--cors", "*", "--debug", "--endpoints", "endpoints.yml", "--credentials", "credentials.yml", "--model", "models"]
