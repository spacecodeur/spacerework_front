FROM node:22-alpine
WORKDIR /app

COPY package*.json .
COPY ./public ./public
COPY ./src ./src
COPY ./tests ./tests
COPY *.json .
COPY ./index.html .
COPY ./vite.config.ts .

# actuellement react-router-dom v7 ne passe pas avec react 19
# ajout du coup du param "--force" pour éviter une erreur
RUN ["npm", "install", "--force"]

EXPOSE 5173
ENTRYPOINT [ "npm", "run", "dev", "--", "--host", "0.0.0.0"]