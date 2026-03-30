FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-likengalex1-del/
RUN rm -rf /usr/share/nginx/html/portfolio-likengalex1-del/*

COPY . /usr/share/nginx/html/portfolio-likengalex1-del/

RUN sed -i 's|root   /usr/share/nginx/html;|root   /usr/share/nginx/html/portfolio-likengalex1-del;|g' /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
