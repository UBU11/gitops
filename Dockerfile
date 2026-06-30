
FROM nginx:alpine

       
RUN echo '<!DOCTYPE html><html><head><title>Zecure GitOps Staging</title><style>body{font-family:sans-serif;background:#0f172a;color:#f8fafc;display:flex;justify-content:center;align-items:center;height:100vh;margin:0;}h1{border-left:4px solid #38bdf8;padding-left:15px;}</style></head><body><h1>🚀 Zecure DevOps GitOps Pipeline Functional</h1></body></html>' > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
