# 该镜像需要依赖的基础镜像
FROM java:8

# 将当前目录下的jar包复制到docker容器的/目录下
ADD rainbow-parent-1.0-SNAPSHOT.jar /rainbow-parent-1.0-SNAPSHOT.jar

# 声明服务运行在8795端口
EXPOSE 8795

# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar","/rainbow-parent-1.0-SNAPSHOT.jar"]

# 指定维护者的名字
MAINTAINER lihao