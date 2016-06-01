package jenn.sentinela;

import java.io.PrintStream;
import java.util.Scanner;
import java.util.ArrayList;

public class Test {

    double score = 0.0;
    double numWords = 0.0;
    boolean finish;

    WordPairList wordList;
    ArrayList<Integer> badScores = new ArrayList<Integer>();

    Scanner in = new Scanner(System.in);


    public Test(WordPairList list){
        wordList = list;
    }


    public double getScore(){
        return (numWords>0) ? (score/numWords) : 0.0;
    }


    public void take(PrintStream ps){
        for(int i = 0; i< wordList.size(); i++){
            if(finish) break;
            oneQuestion(i, ps);
        }
    }

    private void oneQuestion(int i, PrintStream ps) {
        ps.print(" " + wordList.getSourceWord(i) + ": ");
        String userTrans = in.nextLine();
        evaluate(userTrans, i);
    }


    public void finish(){
        finish = true;
    }


    private void evaluate(String trans, int i){
        numWords++;
        if(wordList.checkTranslation(i, trans)) score++;
        else badScores.add(i);
    }

}
