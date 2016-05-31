package jenn.sentinela;

import java.util.Scanner;
import java.util.ArrayList;

public class Test {

    double score = 0.0;
    double numWords = 0.0;
    boolean finish;

    ArrayList<String[]> wordList;
    ArrayList<Integer> badScrs= new ArrayList<Integer>();

    Scanner in = new Scanner(System.in);


    public Test(ArrayList<String[]> list){
        wordList = list;
    }


    public double getScore(){
        return (score/numWords);
    }


    public void take(){
        for(int i = 0; i<wordList.size(); i++){
            if(finish) break;
            System.out.print(" " + wordList.get(i)[0] + ": ");
            String userTrans = in.nextLine();
            checkTranslation(wordList.get(i), userTrans, i);
        }
    }


    public void finish(){
        finish = true;
    }


    private void checkTranslation(String[] word, String trans, int i){
        numWords++;
        if(word[1].equals(trans)) score++;
        else badScrs.add(i);

    }

}
