ActionController::Renderers.add :yaml do |object, options|
  json = JSON.parse(object.to_json)
  yaml = json.to_yaml
  self.content_type ||= Mime::YAML
  self.response_body = yaml
end

ActionController::Renderers.add :binary_plist do |object, options|
  json  = JSON.parse(object.to_json)
  plist = json.to_plist(:plist_format => CFPropertyList::List::FORMAT_BINARY)
  self.content_type ||= Mime::BINARY_PLIST
  self.response_body = plist
end

ActionController::Renderers.add :xml_plist do |object, options|
  json  = JSON.parse(object.to_json)
  plist = json.to_plist(:plist_format => CFPropertyList::List::FORMAT_XML)
  self.content_type ||= Mime::XML_PLIST
  self.response_body = plist
end