FROM teddysun/shadowsocks-libev

ENV CONFIG_JSON ss
ENV PORT 10086
ENV SS_PASSWD u12345

COPY ss.json v2r.json xray.json run.sh /etc/shadowsocks-libev/

CMD sh /etc/shadowsocks-libev/run.sh
