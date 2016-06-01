package jenn.sentinela;

import java.io.PrintStream;
import java.util.Scanner;
import java.util.ArrayList;

public class Test {

    double score = 0.0;
    double numWords = 0.0;
    boolean finish;
    int currentWord = 0;

    WordPairList wordList;
    ArrayList<Integer> badScores = new ArrayList<Integer>();



    public Test(WordPairList list){
        wordList = list;
    }


    public double getScore(){
        return (numWords>0) ? (score/numWords) : 0.0;
    }


   public boolean hasNext() {
       return currentWord < wordList.size();
   }

    public void guess(String trans){
        if(wordList.checkTranslation(getLastWordIndex(), trans)) score++;
        else badScores.add(getLastWordIndex());
    }

    private int getLastWordIndex() {
        return currentWord - 1;
    }

    public String nextQuestion() {
        return wordList.getSourceWord(currentWord++);
    }
}
