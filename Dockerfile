# Use a imagem oficial do Nginx como base
FROM nginx:latest

# Copie o conteúdo do diretório local para o diretório padrão do Nginx
COPY ./html /usr/share/nginx/html

# Exponha a porta 8080
EXPOSE 8080

# Comando para iniciar o Nginx em primeiro plano quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
