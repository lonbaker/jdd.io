task default: [:jekyll]

task :jekyll do
  sh "bundle exec jekyll build -w"
end

task push: :default do
  sh "bundle exec jekyll build"
  sh "bundle exec s3_website push"
end
