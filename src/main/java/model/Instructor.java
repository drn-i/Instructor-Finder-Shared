package model;

import java.io.Serializable;

public class Instructor implements Serializable {

    private int instructorID;
    private String firstName;
    private String lastName;
    private String photoLink;
    private String social1;
    private String social2;
    private String floor;
    private String department;
    private String office;
    private String departmentView;
    private String lastScheduleUpdateDate;

    public String getLastScheduleUpdateDate() {
        return lastScheduleUpdateDate;
    }

    public void setLastScheduleUpdateDate(String lastScheduleUpdateDate) {
        this.lastScheduleUpdateDate = lastScheduleUpdateDate;
    }

    //Default Constructor
    public Instructor(int instructorID, String firstName, String lastName, String floor, String department, String office, String lastScheduleUpdateDate) {
        this.instructorID = instructorID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.floor = floor;
        this.department = department;
        this.office = office;
        this.lastScheduleUpdateDate = lastScheduleUpdateDate;
    }

    public int getInstructorID() {
        return instructorID;
    }

    public void setInstructorID(int instructorID) {
        this.instructorID = instructorID;
    }

    //Full Constructor
    public Instructor(int instructorID, String firstName, String lastName, String photoLink, String social1, String social2, String floor, String department, String office, String departmentView, String lastScheduleUpdateDate) {
        this.instructorID = instructorID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.photoLink = photoLink;
        this.social1 = social1;
        this.social2 = social2;
        this.floor = floor;
        this.department = department;
        this.office = office;
        this.departmentView = departmentView;
        this.lastScheduleUpdateDate = lastScheduleUpdateDate;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhotoLink() {
        return photoLink;
    }

    public void setPhotoLink(String photoLink) {
        this.photoLink = photoLink;
    }

    public String getSocial1() {
        return social1;
    }

    public void setSocial1(String social1) {
        this.social1 = social1;
    }

    public String getSocial2() {
        return social2;
    }

    public void setSocial2(String social2) {
        this.social2 = social2;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getDepartmentView() {
        return departmentView;
    }

    public void setDepartmentView(String departmentView) {
        this.departmentView = departmentView;
    }
}


