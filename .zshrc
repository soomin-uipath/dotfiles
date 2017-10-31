# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/usr/local/git/bin:"
# export MANPATH="/usr/local/man:$MANPATH"
export CLICOLOR=1;

export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export ANT_HOME=/usr/local/opt/ant/libexec
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

export PATH=$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH
export ANDROID_STANDALONE_TOOLCHAIN=$HOME/Documents/Programming/android-standalone-toolchains/
export SCALA_HOME=/usr/local/opt/scala/idea
export GOPATH=/Users/sjeong/.go

# Antibody plugins
source <(antibody init)
antibody bundle mafredri/zsh-async
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-history-substring-search

#antibody bundle akz92/clean
antibody bundle andrepolischuk/min
antibody bundle zsh-users/zsh-syntax-highlighting

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
alias vim='/usr/local/bin/vim'

eval $(/usr/libexec/path_helper -s)
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
