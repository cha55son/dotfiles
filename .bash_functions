function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1 | grep 'working directory clean' | wc -l) != "1" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

working_directory() {
    dir=`pwd`
    in_home=0
    if [[ `pwd` =~ ^$HOME($|\/) ]]; then
        dir="~${dir#$HOME}"
        in_home=1
    fi

    if [[ `tput cols` -lt 110 ]]; then  # <-- Checking the term width
        first="/`echo $dir | cut -d / -f 2`"
        letter=${first:0:2}
        if [[ $in_home == 1 ]]; then
            letter="~$letter"
        fi
        proj=`echo $dir | cut -d / -f 3`
        beginning="$letter/$proj"
        end=`echo "$dir" | rev | cut -d / -f1 | rev`

        if [[ $proj == "" ]]; then
            echo $dir
        elif [[ $proj == "~" ]]; then
            echo $dir
        elif [[ $dir =~ "$first/$proj"$ ]]; then
            echo $beginning
        elif [[ $dir =~ "$first/$proj/$end"$ ]]; then
            echo "$beginning/$end"
        else
            echo "$beginning/…/$end"
        fi
    else
        echo $dir
    fi
} 
