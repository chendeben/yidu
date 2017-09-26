### 使用说明

使用前先自行安装好docker以及docker-composer

安装好后执行：

```
git clone https://github.com/chendeben/yidu.git
cd yidu
docker-compose up --build
```

镜像部署完毕后，打开浏览器，访问http://domain.com/install/index 设置下管理员账号及密码后保存，然后就可以control+c退出，然后执行```docker-compose up -d```放在后台执行即可

### 数据库说明
mongodb在 ./db/data

小说存储于./txt

这些目录可以自行在docker-compose.yml文件里进行修改映射

### 采集说明

①、执行```docker ps```查看当前yidu的容器ID，如：fee788162643；

②、执行```docker exec -it fee788162643 bash```进入容器内部

③、在容器内部执行：

```
cd /usr/local/spider

sh start.sh
```
采集规则以及采集设置，可参考官网：[http://www.51yd.org](http://www.51yd.org)
### 迁移说明
迁移只需将整个项目全部拷贝走，复制到新的服务器下，重新安装好docker和docker-compose环境，然后重新build一次即可