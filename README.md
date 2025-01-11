
# Projeto 2 - DevOps com Kubernetes e ArgoCD

Este repositório contém todos os arquivos necessários para o deploy de uma API de recomendação utilizando Kubernetes, Docker e ArgoCD.

## Estrutura

- **Dockerfile.api**: Arquivo Docker para o serviço da API.
- **Dockerfile.ml**: Arquivo Docker para o serviço de treinamento.
- **deployment-api.yaml**: Configuração do Deployment para a API.
- **job-ml.yaml**: Configuração do Job para treinamento do modelo.
- **service-api.yaml**: Configuração do Service para expor a API.
- **pvc.yaml**: Configuração do PersistentVolumeClaim.
- **argocd-app.yaml**: Configuração do ArgoCD.
- **scripts/**: Contém os scripts Python para API e treinamento do modelo.

## Como Usar

1. Faça build das imagens Docker:
    ```bash
    docker build -t joaoesjunior/api-container:api-0.1 -f Dockerfile.api .
    docker build -t joaoesjunior/ml-container:ml-0.1 -f Dockerfile.ml .
    ```
2. Publique as imagens no DockerHub:
    ```bash
    docker push joaoesjunior/api-container:api-0.1
    docker push joaoesjunior/ml-container:ml-0.1
    ```
3. Aplique os YAMLs no Kubernetes:
    ```bash
    kubectl apply -f pvc.yaml
    kubectl apply -f deployment-api.yaml
    kubectl apply -f service-api.yaml
    kubectl apply -f job-ml.yaml
    ```
4. Configure o ArgoCD para monitorar este repositório.
