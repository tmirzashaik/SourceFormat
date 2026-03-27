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
/*
    
    List<Account> accountsToUpdate = new List<Account>();
    for (Id accId : accountIds) {
        accountsToUpdate.add(new Account(Id = accId, Status__c = newStatus));
    }
    
    if (!accountsToUpdate.isEmpty()) {
        update accountsToUpdate;
    }
}
*/ 

}