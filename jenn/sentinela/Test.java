package jenn.sentinela;

import java.util.Scanner;

public class Test {

    int score = 0;
    int wordsNum = 0;
    WordPairList list;
    Scanner in = new Scanner(System.in);

    public void takeTest(WordPairList list){

        this.list = list;

        for(int i=0; i<list.size(); i++){
            System.out.println(list.getWordAt(i).word1);
            String transWord = in.next();
            if(list.getWordAt(i).checkTranslation(transWord)){
                score++;
            }
            wordsNum++;
        }
    }

    public double getScore(){
        return (double)(score/wordsNum);
    }


}
