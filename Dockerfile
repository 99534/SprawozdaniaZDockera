# Wybierz oficjalny obraz Node.js
FROM node:18-alpine

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj pliki package*.json i zainstaluj zależności
COPY package*.json ./
RUN npm install

# Skopiuj pozostałe pliki aplikacji
COPY . .

# Ustaw port (jeśli np. Express działa na 3000)
EXPOSE 3000

# Polecenie startowe
CMD ["node", "index.js"]
