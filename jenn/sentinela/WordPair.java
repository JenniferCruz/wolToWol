package jenn.sentinela;

public class WordPair {

    private String word1;
    private String word2;
    private String category = "";


    public WordPair(String word1, String word2){
        this.word1 = word1;
        this.word2 = word2;
    }


    public WordPair(String word1, String word2, String category){
        this(word1, word2);
        this.category = category;
    }


    public String getCategory(){
        return this.category;
    }


    public String getWord1(){
        return word1;
    }

    public String getWord2() {
        return word2;
    }
}
