# [TG-FileStreamBot 项目Heroku部署和Docker镜像](https://github.com/EverythingSuckz/TG-FileStreamBot)


### 环境参数

`API_ID` : 从 my.telegram.org 以获取此变量。

`API_HASH` : 从 my.telegram.org 以获取此变量。

`BOT_TOKEN` : 从@BotFather 获取机器人令牌

`BIN_CHANNEL` :创建一个新频道（私人/公共），在您的频道中发布一些内容。将该内容转发至 `@missrose_bot` 并回复/id。获取频道 ID，现在将转发的频道 ID 复制粘贴到此字段中。

`PING_INTERVAL`:您希望每次 ping 服务器以避免休眠的时间（以 ms 为单位）（仅适用于 Heroku）。默认为  `20` 分钟。
`FQDN`: 自定义域名（如果存在）。默认为 WEB_SERVER_BIND_ADDRESS

### 署到 Heroku

> 按下面的按钮快速部署到 Heroku

[![Deploy To Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/x-dr/TG-FileStreamBot_Docker)

### Docker 部署

+ 自行构建docker镜像
```shell
git clone https://github.com/x-dr/TG-FileStreamBot_Docker.git
cd TG-FileStreamBot_Docker
cp .env.example .env
#修改.env
#构建镜像
docker build -t tgurl .
#运行
docker run -itd --name tgurl tgurl
```

#### 使用我编译好的镜像
> 配置变量
```shell
wget https://raw.githubusercontent.com/x-dr/TG-FileStreamBot_Docker/main/.env.example
cp .env.example .env
```
> 运行(运行前，先修改.env中的配置)
```shell
docker run --rm -it \
           -v ${PWD}/.env:/app/.env \
           --network=host \
           gindex/tgfileurl
```
## Credits

- [Heroku](https://heroku.com)
- [EverythingSuckz](https://github.com/EverythingSuckz/TG-FileStreamBot)


