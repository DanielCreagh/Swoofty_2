require 'rubygems'

#test fligt authentication data
API_TOKEN  = 'ca6ea4b452f2026183e757f61743540d_OTg0NzA3MjAxMy0wNC0xMSAwODoyNzoyMC4yMzEyMzY'
TEAM_TOKEN = '8142ce7ed9a6b9d699dd797791c2ec6b_MTg3ODM1MjAxMy0wMy0xNCAwNDo0NjoxOS4zMzU3NzA'

task :run_travis_scripts do
  branch = `git rev-parse --abbrev-ref HEAD`
  puts branch
  if branch.strip == "staging" 
    puts "this is the staging branch - no script for this at the moment"
  elsif branch.strip == "master"
    #publish_to_testflight
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
  sh "xctool archive -archivePath artifacts/archive/ -scheme Swoofty_2"
  sh %{ipa distribute:testflight -a #{API_TOKEN} -T #{TEAM_TOKEN} -f "moreArtifacts/archive/Swoofty_2.ipa"  --notes 'CI deployment' --lists 'InternationalWrapper' --notify --replace --trace}
  puts "finished publishing to test flight"
end
