require 'rubygems'

desc "test to see if rake file is working"
task :test do
  puts "testing"
  sh "xctool -project Swoofty_2.xcodeproj -scheme Swoofty_2 -sdk iphonesimulator test"
end

desc "test to see if rake file is working"
task :build do
  puts "testing"
  sh "xctool -project Swoofty_2.xcodeproj -scheme Swoofty_2 build"
end


# HERE       = File.expand_path('..', __FILE__ )
# API_TOKEN  = 'ef526600c27075b673da42635ab43ecd_MTE4MzExMTIwMTMtMDctMTkgMTI6MzM6MjcuNzc3NzI0'
# TEAM_TOKEN = '8142ce7ed9a6b9d699dd797791c2ec6b_MTg3ODM1MjAxMy0wMy0xNCAwNDo0NjoxOS4zMzU3NzA'

# SIGNING_IDENTITY = '"MARKS and SPENCER P.L.C."'
# ENTERPRISE_PROVISONING_PROFILE = "DeveloperKeys/iOS/Enterprise/MobileProvisioning/MnS_Retail_Wildcard.mobileprovision"

# @new_version = ''
# @repo_path = ENV['repo_path'] || '/Volumes/Celeris/CI/Projects/InternationalWrapper'

# task default: :test

# desc "Clean up folders and install dependencies"
# task :clean do
#   clear_build_folder
#   clear_artifacts
#   clear_simulator_folder
#   set_simulated_device "iPad"
#   sh "bundle install"
#   sh "pod install"
# end

# desc "Start the mimic server manually"
# task :mimic do
#   sh 'bundle exec ruby -r ./features/support/mimic_server.rb -e "MimicServer.start(true)"'
# end

# namespace :build do
#   desc "Build the functional target"
#   task :func do
#     sh "xcodebuild -workspace InternationalWrapper.xcworkspace -scheme 'InternationalWrapper-cal' -configuration 'Debug' -sdk iphonesimulator build CONFIGURATION_BUILD_DIR=\"#{HERE}/ci-artifacts/InternationalWrapper-cal\""
#   end

#   desc "Build the development target"
#   task :dev do
#     sh "ipa build --clean --archive --workspace InternationalWrapper.xcworkspace --scheme InternationalWrapper-dev --configuration Release --destination ci-artifacts/archive"
#   end

#   desc "Build the production target"
#   task :prod do
#     sh "ipa build --clean --archive --workspace InternationalWrapper.xcworkspace --scheme InternationalWrapper --configuration Release --destination ci-artifacts/archive"
#   end

#   desc "Build the production target for Belgium"
#   task :prod_BE do
#     sh "ipa build --archive --workspace InternationalWrapper.xcworkspace --scheme InternationalWrapper-BE --configuration Release --destination ci-artifacts/archive"
#   end

# end

# task test: ["test:unit", "test:func"]
# namespace :test do
#   desc "Run the unit tests"
#   task :unit do
#     sh "xcodebuild -workspace InternationalWrapper.xcworkspace -scheme 'InternationalWrapper' -configuration 'Debug' -sdk iphonesimulator test"
#     close_simulator
#   end

#   desc "Run the functional tests"
#   task func: "build:func" do
#     dir = "#{HERE}/ci-artifacts/InternationalWrapper-cal"
#     app_path = "#{dir}/Browse & Order Int'l.app"
#     sh %{rm -rf "#{dir}/cal.app" && cp -rf "#{app_path}" "#{dir}/cal.app"}
#     app_path = "#{dir}/cal.app"

#     output_html = "#{HERE}/ci-artifacts/InternationalWrapper-cal/InternationalWrapper.html"
#     output_xml = "#{HERE}/ci-artifacts/InternationalWrapper-cal/InternationalWrapper.xml"
#     screenshot_path = "#{HERE}/ci-artifacts/InternationalWrapper-cal/"
#     run_functional_tests(app_path, output_html, output_xml, screenshot_path)
#   end
# end

# namespace :deploy do
#   desc "Deploy the development target to testflight"
#   task dev: ["build:dev", "upload:config:dev", "upload:version:dev"] do
#     sh %{ipa distribute:testflight -a #{API_TOKEN} -T #{TEAM_TOKEN} -f "ci-artifacts/archive/Browse & Order Int'l.ipa"  --notes 'CI deployment' --lists 'InternationalWrapper' --notify --replace --trace}
#   end

#   desc "Deploy the development target to testflight for belgium build"
#   task dev: ["build:prod_BE"] do
#     sh %{ipa distribute:testflight -a #{API_TOKEN} -T #{TEAM_TOKEN} -f "ci-artifacts/archive/Browse & Order Int'l.ipa"  --notes 'CI deployment' --lists 'InternationalWrapper' --notify --replace --trace}
#   end
# end

# namespace :uploadConfig do  
#   namespace :dev do
#     desc "Upload the development config file for the Irish version"
#     task :UK do
#       raise "Upload failed" unless Azure.upload("Config/InternationalWrapper-dev.json")
#     end
#     desc "Upload the development config file for the Belgian version"
#     task :BE do
#       raise "Upload failed" unless Azure.upload("Config/InternationalWrapper-dev-BE.json")
#     end
#   end
#   namespace :prod do
#     desc "Upload the production config file for the Irish version"
#     task :UK do
#       raise "Upload failed" unless Azure.upload("Config/InternationalWrapper-prod.json")
#     end
#     desc "Upload the production config file for the Belgian version"  
#     task :BE do
#       puts "massive eggg!!!"
#       braaaaakekekekeke!!!
#       raise "Upload failed" unless Azure.upload("Config/InternationalWrapper-prod-BE.json")
#     end
#   end
# end

# namespace :uploadVersion do
#   namespace :dev do
#     desc "Upload the development required version for Irish version"
#     task :UK do
#       raise "Upload failed" unless Azure.upload("Config/version-dev.txt")
#     end

#     desc "Upload the development required version for Belgian version"
#     task :BE do
#       raise "Upload failed" unless Azure.upload("Config/version-dev-BE.txt")
#     end
#   end
#   namespace :prod do
#     desc "Upload the production required version for Irish version"
#     task :UK do
#       raise "Upload failed" unless Azure.upload("Config/version-prod.txt")
#     end
#     desc "Upload the production required version for Belgian version"
#     task :BE do
#       raise "Upload failed" unless Azure.upload("Config/version-prod-BE.txt")
#     end
#   end
# end

# desc "Increment the version number on CI"
# task :increment do
#   existing_version = existing_version_number

#   # increment the build number
#   build_number = existing_version[:build] + 1

#   # write the new build numbers to the plist
#   system "/usr/libexec/PlistBuddy -c \"Set :CFBundleVersion #{build_number}\" #{plist_path}"

#   @new_version = existing_version_number

#   # notify
#   puts "old version number: #{existing_version[:full]}"
#   puts "new version number: #{@new_version[:full]}"
#   tc_output_version = "##teamcity[buildNumber '" + "#{@new_version[:full]}" + "']"
#   puts tc_output_version
#   sync_version_number_github(@new_version[:full])
# end

# def fix_screenshot_links_in_html_report(html_report, screenshot_path)
#   text = File.read(html_report)
#   replace = text.gsub!(/src="#{screenshot_path}/, "src=\"")
#   File.open(html_report, "w") { |file| file.puts replace }
# end

# def close_simulator
#   `osascript -e 'tell app "iPhone Simulator" to quit'`
# end

# def clear_artifacts
#   FileUtils.rm_rf( 'ci-artifacts' )
#   FileUtils.mkdir_p( 'ci-artifacts' ) unless File.exists?( 'ci-artifacts' )
# end

# def clear_build_folder
#   FileUtils.rm_rf( 'build' )
#   FileUtils.mkdir_p( 'build' ) unless File.exists?( 'build' )
# end

# def clear_simulator_folder
#   simulator_folder = '~/Library/Application\ Support/iPhone\ Simulator/'
#   `rm -rf #{simulator_folder}`
# end

# def plist_path
#   "#{HERE}/InternationalWrapper/InternationalWrapper-dev-Info.plist"
# end

# def existing_version_number
#   # pull version from plist file
#   version = %x[/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" #{plist_path}]
#   build_number = %x[/usr/libexec/PlistBuddy -c "Print CFBundleVersion" #{plist_path}].to_i

#   # split the version into components
#   split_version = version.split(".").map { |s| s.to_i }
#   major = split_version[0].nil? ? 0 : split_version[0]
#   minor = split_version[1].nil? ? 0 : split_version[1]
#   revision = split_version[2].nil? ? 0 : split_version[2]
#   major_minor_split_version = [major, minor, revision].join(".")
#   existing_version = [major_minor_split_version, build_number].join(".")

#   { :major => major, :minor => minor, :revision => revision, :build => build_number, :major_minor_split => major_minor_split_version, :full => existing_version }
# end

# def sync_version_number_github(version)
#   puts 'Copying file to repo'
#   Dir.chdir  "#{@repo_path}"
#   puts Dir.pwd
#   puts ` git status `
#   puts ` git pull `
#   puts ` cp #{plist_path} #{@repo_path}/InternationalWrapper `
#   puts ` git status `
#   puts 'Adding file'
#   puts ` git add -A `
#   puts  ` git commit -m "New Version - #{version}"`
#   # puts ` git status `
#   puts `git push origin develop`
#   Dir.chdir "#{HERE}"
# end

# def set_simulated_device(simulated_device)
#   current_simulated_device = `defaults read com.apple.iphonesimulator "SimulateDevice"`.chomp

#   if current_simulated_device != simulated_device
#     simulator_pid = `ps -ax|awk '/[i]Phone Simulator.app\\/Contents\\/MacOS\\/iPhone Simulator/{print $1}'`.chomp
#     Process.kill('INT', simulator_pid.to_i) unless simulator_pid.empty?
#     `defaults write com.apple.iphonesimulator "SimulateDevice" '"#{simulated_device}"'`
#   end
# end

# def run_functional_tests(app_path, output_html, output_xml, screenshot_path)
#   sh "calabash-ios sim acc"
#   set_simulated_device 'iPad Retina'
#   exec({ "APP_BUNDLE_PATH" => app_path, "SCREENSHOT_PATH" => screenshot_path }, "cucumber")
#   success = $?.zero?
#   close_simulator
#   unless success
#     fix_screenshot_links_in_html_report(output_html, screenshot_path)
#     fail
#   end
# end
