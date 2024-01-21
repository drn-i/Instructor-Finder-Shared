package model;

import java.io.Serializable;

public class Contact implements Serializable {
    private int contactID;
    private String contactName;
    private String contactDetails;

    public Contact(int contactID, String contactName, String contactDetails) {
        this.contactID = contactID;
        this.contactName = contactName;
        this.contactDetails = contactDetails;
    }

    public int getContactID() {
        return contactID;
    }

    public void setContactID(int contactID) {
        this.contactID = contactID;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactDetails() {
        return contactDetails;
    }

    public void setContactDetails(String contactDetails) {
        this.contactDetails = contactDetails;
    }
}
