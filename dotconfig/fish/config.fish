
function on_exit --on-process %self
  echo "fish is now exiting"
end

function fish_greeting
#  echo "If you can't do it, who will?"
#  set ran random
  fortune -as | cowthink
  echo
end

if status --is-interactive
  echo "-- (tux) --"
  echo "Think about reading a page or more today!"
end



set -x PATH ~/.local/bin $PATH
set -x PATH ~/.cargo/bin $PATH


# set for factis-environment
# set -x way f
# set -x DOCKER_HOST tcp://127.0.0.1:2375
# 

# transset --id $WINDOWID >/dev/null



# This script was automatically generated by the broot function
# More information can be found in https://github.com/Canop/broot

# This function starts broot and executes the command
# it produces, if any.
# It's needed because some shell commands, like `cd`,
# have no useful effect if executed in a subshell.
function br
    set f (mktemp)
    broot --outcmd $f $argv
    if test $status -ne 0
        rm -f "$f"
        return "$code"
    end
    set d (cat "$f")
    rm -f "$f"
    eval "$d"
end
