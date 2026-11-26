// Stride QA test data (CLI kit). Safe to delete after testing.
public with sharing class CliQA_DiscountService {
    public static Decimal discountFor(String tier) {
        if (tier == 'Gold') return 20;
        if (tier == 'Silver') return 10;
        if (tier == 'Bronze') return 5;
        return 0;
    }

    public static Decimal priceAfterDiscount(Decimal listPrice, String tier) {
        if (listPrice == null) return null;
        return listPrice - (listPrice * discountFor(tier) / 100);
    }

    public static List<CliQA_Discount__c> rulesForRegion(String region) {
        return [SELECT Name, Tier__c, Region__c, Discount_Percent__c FROM CliQA_Discount__c WHERE Region__c = :region];
    }
}