# docker-yapi
使用docker部署Yapi （https://yapi.ymfe.org/index.html）

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
