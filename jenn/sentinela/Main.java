package jenn.sentinela;

import java.util.Scanner;

public class Main {

    static Scanner in = new Scanner(System.in);


    public static void main(String[] args) {

        // Install git

        // Finish test class

        // Integrate all parts in a logical flow

        // add a couple of WordPairs
            // Create a test
            // Create different kind of tests

            Feeder feed = new Feeder("wordlist");
            Test test = new Test(feed.getWordPairList());
            //test.take(System.out);

            while(test.hasNext()) {
                System.out.println(test.nextQuestion());
                String input = in.nextLine();
                if( input == "!exit") break;
                test.guess(input);
            }
        
            System.out.println(test.getScore());

    }
}
