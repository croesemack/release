# 1. 继承原作者的镜像（我们要用他装好的环境和 node_modules）
FROM sifan1/vodspider:latest

# 2. 设置工作目录为 /app
WORKDIR /app

# 3. 关键一步：把 GitHub 里的 vod 文件夹下的所有代码，复制进容器的 /app 目录
# 这样容器里就有 index.js 了！
COPY ./vod /app/

# 4. 再次声明启动命令
CMD ["node", "/app/index.js"]
