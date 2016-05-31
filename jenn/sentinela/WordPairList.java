package jenn.sentinela;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class WordPairList {

    List<WordPair> list = new ArrayList<WordPair>();
    int size = 0;

    public void addWordPair(WordPair wordPair){
        this.list.add(wordPair);
        size++;
    }

    public WordPair getWordAt(int index){
        return list.get(index);
    }


    public List<WordPair> getWordByCategory(String category){
        List<WordPair> temp = new ArrayList<WordPair>();
        for(WordPair word: list){
            if(word.getCategory().equals(category)) temp.add(word);
        }
        return temp;
    }

    public List<WordPair> getRandomWordList(int length){
        List<WordPair> temp = new ArrayList<WordPair>();
        Random random = new Random();

        for(int i = 0; i < length; i++){
            temp.add(list.get(random.nextInt(this.list.size())));
        }

        return temp;
    }

    public int size(){
        return size;
    }

}
