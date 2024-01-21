import model.Contact;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ContactsHandler {
    public static List<Contact> GetAllContacts(){
        List<Contact> contactList = new ArrayList<>();

        try {
            ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM contacts");

            while (resultSet.next()){
                Contact contact = new Contact(
                        resultSet.getInt("contactID"),
                        resultSet.getString("ContactName"),
                        resultSet.getString("ContactDetails")
                );
                contactList.add(contact);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return contactList;
    }
}
