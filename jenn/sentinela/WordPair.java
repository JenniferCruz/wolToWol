package jenn.sentinela;

public class WordPair {

    String word1;
    String word2;
    String category = "";

    public WordPair(String word1, String word2){
        this.word1 = word1;
        this.word2 = word2;
    }

    public WordPair(String word1, String word2, String category){
        this(word1, word2);
        this.category = category;
    }

    public boolean checkTranslation(String transWord){
        if(this.word2.equals(transWord)) return true;
        return false;
    }

    public String getCategory(){
        return this.category;
    }

}
