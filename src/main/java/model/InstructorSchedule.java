package model;

import connection.DatabaseConnection;

import java.io.Serializable;

public class InstructorSchedule implements Serializable {
    private int id;
    private String day;
    private String time;
    private String title;

    public InstructorSchedule(int id, String day, String time, String title) {
        this.id = id;
        this.day = day;
        this.time = time;
        this.title = title;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
