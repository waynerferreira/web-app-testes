# Use a imagem oficial do Nginx como base
FROM nginx:alpine

# Copie o conteúdo do diretório local para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html

# Limpeza de arquivos temporários e caches
RUN rm -rf /var/cache/apk/*

# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o Nginx em primeiro plano quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
