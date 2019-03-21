cask 'graalvm-ce' do
  version '1,0.0:14'
  sha256 'e808adc49cba9e1f378d887c7723b1134e2c67520ae69ff6ffd9c261d536c036'
  url "https://github.com/oracle/graal/releases/download/vm-#{version.before_comma}.#{version.after_comma.before_colon}-rc#{version.after_colon}/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc#{version.after_colon}-macos-amd64.tar.gz"
  appcast 'https://github.com/oracle/graal/releases.atom'
  name 'GraalVM Community Edition'
  homepage 'https://www.graalvm.org/'
  postflight do
    system_command '/bin/mv',
                   args: [
                           '-f', '--',
                           "#{staged_path}/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc#{version.after_colon}",
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc#{version.after_colon}"
                         ],
                   sudo: true
  end
  uninstall delete: "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc#{version.after_colon}"
end
