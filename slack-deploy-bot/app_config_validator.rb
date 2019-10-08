require 'dry-validation'

module SlackDeployBot
  class InvalidAppConfig < StandardError; end
  class AppConfigValidator < Dry::Validation::Contract
    params do
      required(:envs).value(:string)
      required(:path).value(:string)
      required(:deploy_cmd).value(:string)
    end

    rule(:envs) do
      key.failure('cannot be empty') if value.to_s.strip.empty?
    end

    rule(:path) do
      key.failure('cannot be empty') if value.to_s.strip.empty?
    end

    rule(:deploy_cmd) do
      key.failure('cannot be empty') if value.to_s.strip.empty?
    end

    validation_result = AppConfigValidator.new
    validation_result.call(config)

    def self.validate(app_name, config)
      validation_result = AppConfigValidator.new
      validation_result.call(config)
    end
  end
end
