FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-likengalex1-del/
RUN rm -rf /usr/share/nginx/html/portfolio-likengalex1-del/*

COPY . /usr/share/nginx/html/portfolio-likengalex1-del/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
