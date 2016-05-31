package jenn.sentinela;

import java.util.ArrayList;

public class Feeder {

    ArrayList<String[]> arrayListStr = new ArrayList<String[]>();
    WordPairList wordPairList = new WordPairList();
    String type;

    public Feeder(String type) {
        switch (type) {
            case "array":
                fillArrayList();
                this.type = type;
                break;
            case "wordlist":
                fillWordList();
            default:
                break;
        }
    }

    private String[][] generateArrays(){

        String[] waddle = {"waddle", "andar como pato"};
        String[] wiry = {"wiry", "nervioso"};
        String[] beaming = {"beaming", "radiante"};
        String[] wadded = {"wadded", "arrugado"};


        String[] natty = {"natty", "acicalado"};
        String[] foible = {"foible", "debilidad"};
        String[] sheepish = {"sheepish", "vergonzoso"};
        String[] befuddled = {"befuddled", "perplejo"};

        String[] bleak = {"Bleak", "Sombrío"};
        String[] bric = {"bric-a-brac", "baratijas", "stuff"};
        String[] mogul = {"Mogul", "magnate", "being"};

        String[][] array = new String[11][];
        array[0] = waddle;
        array[1] = wiry;
        array[2] = beaming;
        array[3] = wadded;
        array[4] = natty;
        array[5] = foible;
        array[6] = sheepish;
        array[7] = befuddled;
        array[8] = bleak;
        array[9] = bric;
        array[10] = mogul;

        return array;

    }

    private void fillWordList() {
        String[][] arrays = generateArrays();
        for(int i=0; i<arrays.length; i++){
            wordPairList.addWordPair(arrays[i][0], arrays[i][1]);
        }
    }

    private void fillArrayList() {

        for(String[] wordPair: generateArrays()){
            arrayListStr.add(wordPair);
        }
    }

    public ArrayList<String[]> getArrayListStr() {
        return arrayListStr;
    }

    public WordPairList getWordPairList(){
        return wordPairList;
    }


    public String printArrayList(){
        String printVs = "([";
        for(String[] pair : arrayListStr){
            printVs += pair[0] + " -> " + pair[1] + "], [";
        }
       return printVs.substring(0, printVs.length()-3) + ")";
    }

}
