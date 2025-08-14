public class AccountHelper {
    
    public static String getAccountDisplayName(String accountName, String accountType) {
        if (String.isBlank(accountName)) {
            return 'Unknown Account';
        }
        
        if (String.isBlank(accountType)) {
            return accountName;
        }
        
        return accountName + ' (' + accountType + ')';
    }
    
    public static List<Account> getActiveAccounts() {
        return [SELECT Id, Name, Type FROM Account WHERE Active__c = 'Yes' LIMIT 10];
    }
    
    public static Integer countAccountsByType(String accountType) {
        if (String.isBlank(accountType)) {
            return 0;
        }
        
        return [SELECT COUNT() FROM Account WHERE Type = :accountType];
    }
/*    public static void assignAccountTerritory(Id accountId, String territory) {
        if (accountId == null || String.isBlank(territory)) {
            throw new IllegalArgumentException('Account ID and Territory are required');
        }
    
        Account acc = [SELECT Id, Territory__c FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Territory__c = territory;
        update acc;
    }
    public static void updateAccountStatus(List<Id> accountIds, String newStatus) {
    if (accountIds == null || accountIds.isEmpty() || String.isBlank(newStatus)) {
        return;
    }
*/  

}