public class AccountHelper {

    // Method to get Accounts by Name
    public static List<Account> getAccountsByName(String accName) {
        List<Account> accounts = [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Name LIKE :('%' + accName + '%')
        ];
        return accounts;
    }

    // Method to create a new Account
    public static Account createAccount(String name, String industry) {
        Account acc = new Account();
        acc.Name = name;
        acc.Industry = industry;
        insert acc;
        return acc;
    }
}