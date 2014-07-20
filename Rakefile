task default: [:less, :jekyll]

task less: ["css/main.css"]

file "css/main.css" => ["css/main.less", "css/duncan.less", "css/highlights.less"] do
  sh "/usr/local/bin/lessc --include-path=bower_components/bootstrap/less --clean-css css/main.less > css/main.css"
end

task jekyll: :less do
  sh "jekyll build -d /Library/WebServer/Documents --safe"
end
