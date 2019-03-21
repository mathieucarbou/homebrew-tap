cask 'graalvm-ce' do
  version '1,0.0:14'
  sha256 'ba7dc2ff4e43185938ea3c5debf6f4bdc780c75b1e86209284b902a20eca9e684c361085f1c8162b9240dee548838404'
  url "https://github.com/oracle/graal/releases/download/vm-#{version.before_comma}.#{version.after_comma.before_colon}-rc{version.after_colon}/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc{version.after_colon}-macos-amd64.tar.gz"
  appcast 'https://github.com/oracle/graal/releases.atom'
  name 'GraalVM Community Edition'
  homepage 'https://www.graalvm.org/'
  postflight do
    system_command '/bin/mv',
                   args: [
                           '-f', '--',
                           "#{staged_path}/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc{version.after_colon}",
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc{version.after_colon}"
                         ],
                   sudo: true
  end
  uninstall delete: "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}.#{version.after_comma.before_colon}-rc{version.after_colon}"
end
