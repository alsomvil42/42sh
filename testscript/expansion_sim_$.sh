SUCCESS="\033[1;32m\t\tSUCCESS\033[1;37m"
ERROR="\033[1;31m\t\t****ERROR****\033[1;37m"
TEST="$"
echo "                   \$*                    "
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\$HOME"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="test$"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="test\$HOME"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\$TEST"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\$HOME/test"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="/TEST1/\$HOME/bsiche"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${HOME}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="test\${}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="test\${HOME}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${TEST}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${HOME}/test"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${HOME/test}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="/TEST1/\${HOME}/bsiche/"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${/}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
TEST="\${a/}"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5
TEST="\${a/ }"
echo "echo $TEST"
echo "------------------------------------------"
CMD_42sh=$(echo "echo $TEST" | ./42sh)
CMD_BASH=$(echo "echo $TEST" | /bin/bash)
if [ $CMD_42sh == $CMD_BASH ]
    then
        echo $SUCCESS
else
        echo $ERROR
        echo "$CMD_42sh"
        echo "$CMD_BASH"
fi
sleep 0.5