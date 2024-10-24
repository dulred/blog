---
title: "sql1-3"
excerpt: "hello, world"
date: "2020-01-16 05:35:07"
coverImage: "/assets/blog/preview/cover.jpg"
author:
    name: dulred
    picture: "/assets/blog/authors/joe.jpeg"
ogImage:
  url: "/assets/blog/preview/cover.jpg"
---

### MSSQL下载/安装/配置:

https://www.microsoft.com/zh-cn/sql-server/sql-server-downloads

![image.png](/assets/blog/sql1-3/mssql1.png)



双击打开:

![image.png](/assets/blog/sql1-3/mssql2.png)

![image.png](/assets/blog/sql1-3/mssql3.png)

看你硬盘情况，c盘拥挤的话，选其他，自定义选择

![image.png](/assets/blog/sql1-3/mssql4.png)





![image.png](/assets/blog/sql1-3/mssql5.png)


![image.png](/assets/blog/sql1-3/mssql6.png)

下次再右键这个ISO文件就出现装载选项

![image.png](/assets/blog/sql1-3/mssql7.png)



![image.png](/assets/blog/sql1-3/mssql8.png)



![image.png](/assets/blog/sql1-3/mssql9.png)


![image.png](/assets/blog/sql1-3/mssql10.png)



![image.png](/assets/blog/sql1-3/mssql11.png)



![image.png](/assets/blog/sql1-3/mssql12.png)



![image.png](/assets/blog/sql1-3/mssql13.png)



![image.png](/assets/blog/sql1-3/mssql14.png)


![image.png](/assets/blog/sql1-3/mssql15.png)

可能出现有杀毒的，直接允许，然后在 黑窗口中直接回车键 就可以继续运行



然后完成后。打开sqlServer管理器配置并且验证

![image.png](/assets/blog/sql1-3/mssql16.png)



![image.png](/assets/blog/sql1-3/mssql17.png)



对防火墙添加这三个允许的配置，其他的局域网就能连接自己的数据库，要不然只能本地访问(学习阶段可以不考虑下面配置)



![image.png](/assets/blog/sql1-3/mssql18.png)

具体步骤:

![image.png](/assets/blog/sql1-3/mssql19.png)

![image.png](/assets/blog/sql1-3/mssql20.png)

![image.png](/assets/blog/sql1-3/mssql21.png)


![image.png](/assets/blog/sql1-3/mssql22.png)








![image.png](/assets/blog/sql1-3/mssql23.png)




![image.png](/assets/blog/sql1-3/mssql24.png)


![image.png](/assets/blog/sql1-3/mssql25.png)


![image.png](/assets/blog/sql1-3/mssql26.png)




![image.png](/assets/blog/sql1-3/mssql27.png)




### 数据库管理工具下载

用来连接、查询和管理数据库数据

https://www.microsoft.com/zh-cn/sql-server/sql-server-downloads
![image.png](/assets/blog/sql1-3/mssql28.png)



![image.png](/assets/blog/sql1-3/mssql29.png)




![image.png](/assets/blog/sql1-3/mssql30.png)




![image.png](/assets/blog/sql1-3/mssql31.png)


上述步骤都完成后，重启，让前面的配置都生效





为了方便打开 找到这个路径，弄个快捷方式，或者你有其他方式方便都可以

"C:\Program Files (x86)\Microsoft SQL Server Management Studio 20\Common7\IDE\Ssms.exe"  

![image.png](/assets/blog/sql1-3/mssql32.png)



### 打开MSSM连接基本使用

##### 连接:

![image.png](/assets/blog/sql1-3/mssql33.png)

![image.png](/assets/blog/sql1-3/mssql34.png)

修改加密类型为，可选

![image.png](/assets/blog/sql1-3/mssql35.png)



##### 创建一个测试数据库 myTest

![image.png](/assets/blog/sql1-3/mssql36.png)



![image.png](/assets/blog/sql1-3/mssql37.png)

![image.png](/assets/blog/sql1-3/mssql38.png)

![image.png](/assets/blog/sql1-3/mssql39.png)



##### 创建一个测试账号,然后给这个测试账号操作myTest这个数据库的权限(因为sa账号默认拥有最高权限，养个习惯，创建一个测试账号来对数据库进行操作)

###### 1.创建账号

![image.png](/assets/blog/sql1-3/mssql40.png)

![image.png](/assets/blog/sql1-3/mssql41.png)

完成后就会出现这个

![image.png](/assets/blog/sql1-3/mssql42.png)


###### 2.让test账户 能访问 myTest数据库

![image.png](/assets/blog/sql1-3/mssql43.png)

然后填写这个，先这样填写就行，最后一个填写选项以后需要用到再解释

![image.png](/assets/blog/sql1-3/mssql44.png)



然后再次打开

![image.png](/assets/blog/sql1-3/mssql45.png)



![image.png](/assets/blog/sql1-3/mssql46.png)




##### 断开现在的这个sa用户，用test用户登录

![image.png](/assets/blog/sql1-3/mssql47.png)



![image.png](/assets/blog/sql1-3/mssql48.png)

![image.png](/assets/blog/sql1-3/mssql49.png)

能连接成功就可以了，现在test用户拥有myTest 数据库的所有查询修改数据表之类的功能，就只是没有删除这个数据库的功能