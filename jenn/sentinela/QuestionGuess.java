package jenn.sentinela;

/**
 * Created by Jennifer on 5/31/2016.
 */
public class QuestionGuess {
    String correctWord;
    private Test test;

    public QuestionGuess(String correctWord, Test test) {
        this.correctWord = correctWord;
        this.test = test;
    }
    public boolean check(String str) {

        if(str.equals(correctWord)) test.correctAnswer();
        test.wrongAnser();
    }
}
