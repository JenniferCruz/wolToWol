package jenn.sentinela;

import java.util.ArrayList;

public class WordPairList {

    ArrayList<WordPair> wordList = new ArrayList<WordPair>();

    public void addWordPair(WordPair word){
        wordList.add(word);
    }


    public WordPair getWordAt(int index){
        return wordList.get(index);
    }


    public String getSourceWord(int index){
        return wordList.get(index).getWord1();
    }


    public String getTranslationWord(int index){
        return wordList.get(index).getWord2();
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

    public boolean checkTranslation(int i, String trans){
        if(getTranslationWord(i).equals(trans)) return true;
        return false;
    }

}
