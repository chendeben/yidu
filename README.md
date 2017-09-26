## 使用说明
### 前提
使用前先自行安装好docker以及docker-composer

安装好后执行：

```
git clone https://github.com/chendeben/yidu.git
cd yidu
docker-compose up --build
```
### 数据库说明
mongodb在 ./db/data

小说存储于./txt

### 采集说明

①、执行```docker ps```查看当前yidu的容器ID，如：fee788162643；

②、执行```docker exec -it fee788162643 bash```进入容器内部

③、在容器内部执行：

```
cd /usr/local/spider

sh start.sh
```
采集规则以及采集设置，可参考官网：[http://www.51yd.org](http://www.51yd.org)