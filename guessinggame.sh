answer=$(ls | wc -l) #print the new line counts to calculate how many files

number=0

function correct {
    echo "you guess the right answer!"
    echo "you used times" $number
}

echo "This is a game for you to guess how many files there are in the directory"
echo "Hidden files are not counted, now tell me the number: "
read input

while [[ $input -ne $answer ]]
do
    if [[ $input -gt $answer ]]
    then
        echo "You guess higher than the correct answer!!"
        number=$number+1
    else
        echo "You guess lowert than the correct answer!!"
        number=$number+1
    fi
    echo "Tell me you guess again: "
    read input
done

correct
