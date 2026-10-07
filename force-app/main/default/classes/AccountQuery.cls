public with sharing class AccountQuery {
    public static Account getFirstAccount() {
        return [SELECT Id, Name FROM Account LIMIT 1];
    }
}