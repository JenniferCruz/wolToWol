package jenn.sentinela;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class WordPairList {

    ArrayList<String[]> wordList = new ArrayList<String[]>();

    public void addWordPair(String str1, String str2){
        String[] word = {str1, str2};
        wordList.add(word);
    }


    public String[] getWordAt(int index){
        return wordList.get(index);
    }

//
//    public void getWordByCategory(String category){
//        // TODO: implement method
//    }
//
//
//    public List<WordPair> getRandomWordList(int length){
//        // TODO: implement method
//    }

    public int size(){
        return wordList.size();
    }

}
