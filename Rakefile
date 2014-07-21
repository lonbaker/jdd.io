task default: [:less, :fonts, :jekyll]

task fonts: :fontawesome

task fontawesome: ["fonts/fontawesome-webfont.eot", "fonts/fontawesome-webfont.svg", "fonts/fontawesome-webfont.ttf", "fonts/fontawesome-webfont.woff", "fonts/FontAwesome.otf"]

file "fonts/fontawesome-webfont.eot" => "bower_components/fontawesome/fonts/fontawesome-webfont.eot" do |t|
  cp t.prerequisites.first, t.name
end

file "fonts/fontawesome-webfont.svg" => "bower_components/fontawesome/fonts/fontawesome-webfont.svg" do |t|
  cp t.prerequisites.first, t.name
end

file "fonts/fontawesome-webfont.ttf" => "bower_components/fontawesome/fonts/fontawesome-webfont.ttf" do |t|
  cp t.prerequisites.first, t.name
end

file "fonts/fontawesome-webfont.woff" => "bower_components/fontawesome/fonts/fontawesome-webfont.woff" do |t|
  cp t.prerequisites.first, t.name
end

file "fonts/FontAwesome.otf" => "bower_components/fontawesome/fonts/FontAwesome.otf" do |t|
  cp t.prerequisites.first, t.name
end


task less: ["css/main.css"]

file "css/main.css" => ["css/main.less", "css/duncan.less", "css/highlights.less"] do
  sh "/usr/local/bin/lessc --include-path=bower_components --clean-css css/main.less > css/main.css"
end

task jekyll: :less do
  sh "jekyll build --safe"
end
