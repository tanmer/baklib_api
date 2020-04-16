# BaklibApi

baklib官网地址： [https://www.baklib.com/](https://www.baklib.com/)
## 安装

在您 Ruby 应用程序的 Gemfile 文件中，添加如下一行代码：

```ruby
gem 'baklib_api'
```
然后，在应用程序所在的目录下，可以运行 bundle 安装依赖包：

    $ bundle

或者，可以使用 Ruby 的包管理器 gem 进行安装：

    $ gem install baklib_api

## 配置
在`config/initializers`文件夹下面添加`baklib_api.rb`配置文件

Token值获取请参阅[baklib API官方文档说明](https://guide.baklib.com/api_doc/2751)
```ruby
require 'baklib_api'
BaklibApi::Config.setup do |config|
  config.token = BAKLIB_TOKEN
end
```

## 使用
参考文档：[baklib Ruby SDK 使用指南](https://guide.baklib.com/api_doc/7dcd)
