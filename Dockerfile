FROM node:19-alpine

# Sowohl package.json als auch package-lock.json kopieren.
# Schrägstrich '/' am Ende von 'app' ist wichtig, damit ein app-Verzeichnis 
# erstellt wird, sonst gibt es eine Fehlermeldung
COPY package*.json /usr/app/

# Kopieren der Anwendungsdateien aus dem src-Verzeichnis
COPY src /usr/app/

# Create app directory & set default dir so that next commands executes in 
# /usr/app dir, liked cd-ing into /usr/app to execute npm install

# App-Verzeichnis erstellen & Standardverzeichnis festlegen, damit die nächsten Befehle 
# in /usr/app-Verzeichnis ausgeführt werden.
WORKDIR /usr/app

# app-Abhängigkeiten installieren
RUN npm install

# Starten Sie die Anwendung
CMD ["node", "server.js"]