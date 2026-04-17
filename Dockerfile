# Gunakan Nginx Alpine untuk ukuran image server yang super ringan
FROM nginx:alpine

# Hapus default page Nginx bawaan
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file dari repository (index.html, aset) ke public folder Nginx
COPY . /usr/share/nginx/html/

# Expose port 80 internal container
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
