ActionController::Renderers.add :yaml do |object, options|
  yaml = object.to_yaml
  self.content_type ||= Mime::YAML
  self.response_body = yaml
end
