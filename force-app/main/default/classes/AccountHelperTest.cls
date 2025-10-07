@isTest
public class AccountHelperTest {
    
    @isTest
    static void testGetAccountDisplayName() {
        // Test with both name and type
        String result1 = AccountHelper.getAccountDisplayName('Acme Corp', 'Customer');
        System.assertEquals('Acme Corp (Customer)', result1);
        
        // Test with name only
        String result2 = AccountHelper.getAccountDisplayName('Acme Corp', '');
        System.assertEquals('Acme Corp', result2);
        
        // Test with blank name
        String result3 = AccountHelper.getAccountDisplayName('', 'Customer');
        System.assertEquals('Unknown Account', result3);
    }
    
    @isTest
    static void testCountAccountsByType() {
        // Test with blank type
        Integer count1 = AccountHelper.countAccountsByType('');
        System.assertEquals(0, count1);
        
        // Test with valid type (will return 0 in test context without data)
        Integer count2 = AccountHelper.countAccountsByType('Customer');
        System.assertEquals(0, count2);
    }
    
    @isTest
    static void testGetActiveAccounts() {
        // This will return empty list in test context without test data
        List<Account> accounts = AccountHelper.getActiveAccounts();
        System.assertNotEquals(null, accounts);
    }
/*
@isTest
static void testUpdateAccountStatus() {
    // Create test accounts
    List<Account> testAccounts = new List<Account>();
    for (Integer i = 0; i < 3; i++) {
        testAccounts.add(new Account(Name = 'Test Account ' + i, Status__c = 'Active'));
    }
    insert testAccounts;
    
    List<Id> accountIds = new List<Id>();
    for (Account acc : testAccounts) {
        accountIds.add(acc.Id);
    }
    
    // Test bulk status update
    AccountHelper.updateAccountStatus(accountIds, 'Inactive');
    
    List<Account> updatedAccounts = [SELECT Status__c FROM Account WHERE Id IN :accountIds];
    for (Account acc : updatedAccounts) {
        System.assertEquals('Inactive', acc.Status__c);
    }
    
    // Test with empty list
    AccountHelper.updateAccountStatus(new List<Id>(), 'Active');
    // Should not throw exception
}
*/
}