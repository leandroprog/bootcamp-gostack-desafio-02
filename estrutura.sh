# Pasta da aplicação
mkdir src

# Onde vai fica nossa camada MVC e também nossas pastas como middlewares, services
mkdir src/app
mkdir src/app/controllers
mkdir src/app/middlewares
mkdir src/app/models

# Nossa classe de configuração do servidor
echo "" > src/app.js

# Nosso arquivo de rotas
echo "" > src/routes.js

# Arquivo que inicia o servidor.
echo "" > src/server.js

# Arquivos de configuração.
mkdir src/config
echo "" > src/config/database.js

# Arquivos de banco
mkdir src/database
mkdir src/database/migrations
echo "" > src/database/index.js

