# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

Mime::Type.register "application/xml",     :xml_plist,    [], ["xml.plist"]
Mime::Type.register "application/x-plist", :binary_plist, [], ["binary.plist"]
