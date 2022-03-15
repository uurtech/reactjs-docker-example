FROM node:16 AS builder

WORKDIR /app

COPY ./app/package.json ./

RUN npm install 

COPY ./app/ ./
ENTRYPOINT ["tail", "-f", "/dev/null"]
# RUN npm run build


# FROM nginx:1.19.0

# WORKDIR /usr/share/nginx/html

# RUN rm -rf ./*

# COPY --from=builder /app/build .

# ENTRYPOINT ["nginx", "-g", "daemon off;"]