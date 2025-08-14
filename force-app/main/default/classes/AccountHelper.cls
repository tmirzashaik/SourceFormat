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

}