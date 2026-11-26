// Stride QA test data (CLI kit). Safe to delete after testing.
@IsTest
private class CliQA_DiscountServiceTest {
    @IsTest
    static void discountByTier() {
        Assert.areEqual(20, CliQA_DiscountService.discountFor('Gold'));
        Assert.areEqual(10, CliQA_DiscountService.discountFor('Silver'));
        Assert.areEqual(5, CliQA_DiscountService.discountFor('Bronze'));
        Assert.areEqual(0, CliQA_DiscountService.discountFor(null));
    }

    @IsTest
    static void priceAfterDiscount() {
        Assert.areEqual(80, CliQA_DiscountService.priceAfterDiscount(100, 'Gold'));
        Assert.isNull(CliQA_DiscountService.priceAfterDiscount(null, 'Gold'));
    }

    @IsTest
    static void rulesForRegion() {
        insert new CliQA_Discount__c(Name = 'Test rule', Tier__c = 'Gold', Region__c = 'EMEA', Discount_Percent__c = 20);
        Assert.areEqual(1, CliQA_DiscountService.rulesForRegion('EMEA').size());
    }
}