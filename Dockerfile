#FROM klakegg/hugo:0.78.2-alpine AS build
#RUN apk add -U git
#COPY . /src
#RUN make init
#RUN make build

#FROM nginx:1.19.4-alpine
#RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old-index.html
#COPY --from=build /src/public /usr/share/nginx/html
#EXPOSE 80
FROM neuromation/neuro-extras:21.3.19
RUN wget https://raw.githubusercontent.com/neuro-inc/platform-client-python/master/build-tools/garbage-files-generator.py && \
    python3 garbage-files-generator.py 1 7Gb
