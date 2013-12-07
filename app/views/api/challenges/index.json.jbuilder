json.array!(collection) do |resource|
  json.partial! resource, resource: resource
end
