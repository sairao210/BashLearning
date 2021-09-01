#!/usr/bin/env bash

#example case statement
#in the case statements, file globing like string matching will be done
while read input; do
    case $input in
        No |  no | NO )
            echo "$input got matched: NO"
            ;;
        [Yy][eE][sS] )
            echo "$input got matched to : YES"
            ;;
        * )
            echo "$input not matched"
    esac
done <<EOF
Yes
NO
nO
yEs
EOF

#If conditions
#test if a file exists
if test -e /bin/bash; then
    echo "bash is present in /bin"
else
    echo "bash is not present in /bin"
fi

#test for diff file operations
test -d /home #directory test
test -x /bin/bash #is executable
test -e /somefile #file exists

# test command is equivalent to [[ -e /some file ]]
# string tests
person="sai"
if [[ $person == "sai" ]]; then
    echo "this person is sai"
fi

# for arthimetic ops use ((  ))
x=5
if ((x<4 || x==5)); then
    echo "arthimetic comparisons passed by $x"
fi

#just for fun, understand differences between [[ == ]], -eq, (( == ))
a=3
b=03
if [[ a == b ]]; then
    echo "[[ $a == $b ]] returned true"
else
    echo "[[ $a == $b ]] returned false"
    if [[ a -eq b ]]; then
        echo "[[ $a -eq $b ]] returned true"
        if (( $a == $b )); then
            echo "(($a==$b)) returned true"
        else
            echo "(($a==$b)) returned false"
        fi
    else 
        echo "[[ $a -eq $b ]] returned false"
        
    fi
fi