# BaklibApi

baklib官网地址： [https://www.baklib.com/](https://www.baklib.com/)
## 安装

```ruby
gem 'baklib_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baklib_api

## 配置
在`config/initializers`文件夹下面添加`baklib_api.rb`配置文件

```ruby
require 'baklib_api'
BaklibApi::Config.setup do |config|
  config.token = BAKLIB_TOKEN
end
```

## 方法

`baklib_api`提供了以下方法可以直接调用`baklib`的接口

调用方式及说明：
```ruby
BaklibApi.create_article(params)
BaklibApi.destroy_article(params)
BaklibApi.list_articles(params)
BaklibApi.show_article(params)
BaklibApi.update_article(params)
BaklibApi.create_channel(params)
BaklibApi.destroy_channel(params)
BaklibApi.list_channels(params)
BaklibApi.show_channel(params)
BaklibApi.update_channel(params)
BaklibApi.create_tenant(params)
BaklibApi.destroy_tenant(params)
BaklibApi.list_tenants(params)
BaklibApi.show_tenant(params)
BaklibApi.update_tenant(params)
```
