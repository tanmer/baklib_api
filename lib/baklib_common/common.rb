module BaklibCommon
  module Common
    BaklibApi::Config.expose_models.each do |model|
      model = model.to_s
      BaklibApi::Config.action_map.each do |action|
        k, v = action
        model = (k.to_s == 'list' ? model.pluralize : model)
        class_eval <<-METHOD, __FILE__, __LINE__ + 1
          def #{k}_#{model}(request_method = '#{v}', **params)
            path = "/api/v1/#{model.pluralize}/" + params.delete(:id).to_s
            BaklibApi::Client.request(path, '#{v}', **params)
          end
        METHOD
      end
    end
  end
end
