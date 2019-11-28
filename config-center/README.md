# 配置中心
路径classpath:/configs下
dev文件夹下是开发环境目录
对应各个微服务的bootstrap.yml里的profile: dev
默认以各个服务的{spring.application.name}.yml
暂时放在本地，有条件者可将配置文件放在git
随机端口号，支持启动多个实例
# git配置手动更新
变更为github配置文件
/actuator/bus-refresh bus刷新所有配置
/actuator/refresh 单个项目刷新配置

# git配置自动更新
github配置独立为一个项目
设置webhook提交配置时自动刷新，发送post请求到配置中心，需要外网环境、注意hook安全
