// Stride QA test data (CLI kit). Safe to delete after testing.
public with sharing class CliQA_Util {
    public static String welcome(String name) {
        return System.Label.CliQA_Welcome.replace('{0}', name == null ? '' : name);
    }
}