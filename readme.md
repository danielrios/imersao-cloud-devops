# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)
---
## Passos para subir o projeto
Este método sobe a aplicação em um contêiner, sem a necessidade de instalar Python ou dependências na sua máquina.
1. **Clone o repositório:**
   ```sh
   git clone https://github.com/seu-usuario/imersao-cloud-devops.git
   cd imersao-cloud-devops
   ```
   > (Lembre-se de substituir pela URL correta do seu repositório)

2. **Suba o contêiner com Docker Compose:**
   ```sh
   docker-compose up --build
   ```
   - O Docker irá construir a imagem e iniciar o contêiner. O argumento --build garante que a imagem seja reconstruída se você fizer alterações no Dockerfile.


3. **Acesse a documentação interativa:**

   - Abra o navegador e acesse:  
   [http://localhost:8000/docs](http://localhost:8000/docs)
   > Aqui você pode testar todos os endpoints da API de forma interativa.
---

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.
- `Dockerfile`: Define a imagem Docker da aplicação.•
-  `docker-compose.yml`: Orquestra a execução do contêiner.
---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---
