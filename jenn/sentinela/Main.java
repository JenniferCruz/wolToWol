package jenn.sentinela;

public class Main {

    public static void main(String[] args) {

        // Install git

        // Finish test class

        // Integrate all parts in a logical flow

        // add a couple of WordPairs
            // Create a test
            // Create different kind of tests

            Feeder feed = new Feeder("wordlist");
            Test test = new Test(feed.getWordPairList());
            test.take();
            System.out.println(test.getScore());

    }
}
