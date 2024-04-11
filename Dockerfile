FROM node:20-alpine
WORKDIR /usr/build
COPY package.json pnpm-lock.yaml ./
RUN yarn global add pnpm
RUN pnpm install --frozen-lockfile
COPY . /usr/build
RUN pnpm build
EXPOSE 8000
CMD ["pnpm", "start"]
