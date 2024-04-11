FROM node:20-alpine
WORKDIR /usr/build
COPY package.json pnpm-lock.yaml ./
ENV NEXT_PUBLIC_MEDUSA_BACKEND_URL https://medusa.prixeo.com
RUN npm install -g pnpm
RUN pnpm install
COPY . /usr/build
RUN pnpm build
EXPOSE 8000
CMD ["pnpm", "start"]
