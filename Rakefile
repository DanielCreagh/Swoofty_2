require 'rubygems'

#test fligt authentication data
API_TOKEN  = 'ca6ea4b452f2026183e757f61743540d_OTg0NzA3MjAxMy0wNC0xMSAwODoyNzoyMC4yMzEyMzY'
TEAM_TOKEN = '8142ce7ed9a6b9d699dd797791c2ec6b_MTg3ODM1MjAxMy0wMy0xNCAwNDo0NjoxOS4zMzU3NzA'

task :run_travis_scripts do
  if is_master_branch
    publish_to_testflight
  else
    test
  end
end

desc "test to see if rake file is working"
def test
  puts "testing"
  sh "xctool -project Swoofty_2.xcodeproj -scheme Swoofty_2 -sdk iphonesimulator test"
end

desc "test to see if rake file is working"
task :build do
  puts "testing"
  sh "xctool -project Swoofty_2.xcodeproj -scheme Swoofty_2 build"
end

desc "test to see if rake file is working"
def publish_to_testflight
  puts "publishing to testflight"
  sh "ipa build --clean --archive --project Swoofty_2.xcodeproj --scheme Swoofty_2 --configuration Debug --destination moreArtifacts/archive/"
  sh %{ipa distribute:testflight -a #{API_TOKEN} -T #{TEAM_TOKEN} -f "moreArtifacts/archive/Swoofty_2.ipa"  --notes 'CI deployment' --lists 'InternationalWrapper' --notify --replace --trace}
  puts "finished publishing to test flight"
end

# methods
def is_master_branch
    branch = ENV['TRAVIS_BRANCH']
    branch == "master" ? true : false
end

def is_develop_branch
    branch = ENV['TRAVIS_BRANCH']
    branch == "origin/develop" ? true : false
end

# local convenience methods
task :local_deploy_to_testflight do
  publish_to_testflight
end