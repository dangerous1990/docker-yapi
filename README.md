# docker-yapi
使用docker部署Yapi （https://yapi.ymfe.org/index.html）
Based on: https://github.com/dangerous1990/docker-yapi

# 安装YApi

1. 克隆本项目到本地
2. 按照项目需求修改yapi/config.json, 具体配置方式参考：https://yapi.ymfe.org/devops/index.html
2. 手动构建yapi镜像 yapi/build.sh
3. 使用docker-compose运行, 将自动初始化超级用户 admin@admin.com / ymfe.org

## 
```
git clone https://github.com/linkinghack/docker-yapi.git

cd docker-yapi/yapi && chmod +x build.sh && ./build.sh

cd .. 
docker-compose up -d 
```

# 配置Nginx
在nginx-conf目录下 *yapi-proxy.conf* 文件中配置主机名称、和证书位置。
使用nginx官方docker镜像时把上述配置文件映射到了*/etc/nginx/conf.d/default.conf*，解决因为默认80端口监听导致自动跳转443失败的问题。

生成本地自签名证书：
```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt -config certificate.conf
```