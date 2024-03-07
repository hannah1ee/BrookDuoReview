CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if ! [ -f student-submission/ListExamples.java ]
then 
    echo "Missing needed files"
    # i like how you noted that there some needed files are missing 
    # i think itd be good to specify that ListExamples.java specifically is missing
    exit 

fi
echo "continue"

# i like how u put "continue" to communicate that the files are existing and that you know it'll now begin the grading

cp student-submission/ListExamples.java TestListExamples.java grading-area 
cp -r lib grading-area

cd grading-area
javac -cp $CPATH *.java 
if [ $? -ne 0 ]
then 
    echo "Compilation Error. Double check your code bugs or syntax"
    # i like how you provide suggestions for where in your code something could be wrong
fi 

# i think it would be good if you are able to echo something about no errors passed


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
