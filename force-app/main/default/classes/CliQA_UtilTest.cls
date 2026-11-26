// Stride QA test data (CLI kit). Safe to delete after testing.
@IsTest
private class CliQA_UtilTest {
    @IsTest
    static void welcome() {
        Assert.isTrue(CliQA_Util.welcome('Veni').contains('Veni'));
    }
}