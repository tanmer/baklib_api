module BaklibApi
  # baklib配置模块
  module Config
    # token是每个用户的唯一标识，且token为必填
    mattr_accessor :token

    # 可访问的api接口
    mattr_reader :expose_models
    @@expose_models = [:tenant, :channel, :article]

    mattr_reader :host
    @@host = 'https://www.baklib.com/'

    mattr_reader :action_map
    @@action_map = [
      ['create', 'post'],
      ['update', 'put'],
      ['destroy', 'delete'],
      ['show', 'get'],
      ['list', 'get']
    ]

    def self.setup
      yield self
    end
  end
end
