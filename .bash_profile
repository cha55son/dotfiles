# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=512m'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/opt/ruby/bin:$PATH

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

export PATH=/Users/chason/bin/Sencha/Cmd/4.0.2.67:$PATH

export SENCHA_CMD_3_0_0="/Users/chason/bin/Sencha/Cmd/4.0.2.67"
