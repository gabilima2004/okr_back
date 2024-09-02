# Imagem base
FROM node:18-alpine AS builder

# Definir o diretório de trabalho
WORKDIR /app

# Instalar dependências
COPY package*.json ./
RUN npm install

# Copiar arquivos do projeto
COPY . .

# Construir o projeto
RUN npm run build

# Imagem de produção
FROM node:18-alpine AS production

# Definir o diretório de trabalho
WORKDIR /app

# Copiar package.json e instalar apenas dependências de produção
COPY package*.json ./
RUN npm install --only=production

# Copiar arquivos construídos e Prisma Client da etapa de construção
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist

# Expor a porta em que a aplicação roda
EXPOSE 3000

# Iniciar a aplicação
CMD ["node", "dist/main"]
