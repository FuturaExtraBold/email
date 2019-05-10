activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Root templates
%w[
  index
].each_with_index do |name|
  proxy "/#{name}.html", "/templates/root/#{name}.html", ignore: true
end

# Clyde templates
%w[
  index
].each_with_index do |name|
  proxy "/clyde/#{name}.html", "/templates/clyde/#{name}.html", ignore: true
end
