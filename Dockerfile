FROM node:20.12.0-bookworm-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件（包括 package.json 和 pnpm-lock.yaml）
COPY package.json pnpm-lock.yaml ./

# 安装 pnpm
RUN npm install -g pnpm

# 配置 pnpm 使用淘宝镜像
RUN pnpm config set registry https://registry.npmmirror.com

# 安装依赖
RUN pnpm install

# 复制其他项目文件
COPY . .

# 构建项目
# RUN pnpm run build   

# 暴露端口
EXPOSE 3001

# 启动应用
CMD ["pnpm", "dev"]
