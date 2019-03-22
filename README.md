[![Build Status](https://travis-ci.org/mathieucarbou/homebrew-tap.svg?branch=master)](https://travis-ci.org/mathieucarbou/homebrew-tap)

## Install TAP

```bash
> brew tap mathieucarbou/tap
```

## Available taps

### GraalVM Community Edition

```bash
> brew cask install graalvm-ce
> jenv add /Library/Java/JavaVirtualMachines/graalvm-ce-1.0.0-rc14/Contents/Home/
```

__Notes:__

* Adpated from https://github.com/oracle/graal/issues/959 by [@fniephaus](https://github.com/fniephaus)
* Ideally needs to be in GraalVM repo and supported by them
* Similar to https://github.com/AdoptOpenJDK/homebrew-openjdk/
* Not sure if we need the symlink like in https://github.com/AdoptOpenJDK/homebrew-openjdk/blob/master/Casks/adoptopenjdk9.rb

