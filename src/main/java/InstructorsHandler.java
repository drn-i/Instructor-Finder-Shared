import connection.DatabaseConnection;
import model.Instructor;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class InstructorsHandler {

    //Method to retrieve all instructors from the database
    public static List<Instructor> GetAllInstructors(){
        List<Instructor> instructorList = new ArrayList<>();

        try {
            ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructors");

            while (resultSet.next()){
                Instructor instructor = new Instructor(
                        resultSet.getInt("instructor_id"),
                        resultSet.getString("FirstName"),
                        resultSet.getString("LastName"),
                        resultSet.getString("PhotoLink"),
                        resultSet.getString("Social1"),
                        resultSet.getString("Social2"),
                        resultSet.getString("Floor"),
                        resultSet.getString("Department"),
                        resultSet.getString("Office"),
                        resultSet.getString("DepartmentView"),
                        resultSet.getString("lastScheduleUpdateDate")
                );
                instructorList.add(instructor);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return instructorList;
    }

    public static List<Instructor> GetDepartmentInstructors(String department){
        List<Instructor> instructorList = new ArrayList<>();

        try {
            ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructors WHERE Department='" + department + "'");

            while (resultSet.next()){
                Instructor instructor = new Instructor(
                        resultSet.getInt("instructor_id"),
                        resultSet.getString("FirstName"),
                        resultSet.getString("LastName"),
                        resultSet.getString("PhotoLink"),
                        resultSet.getString("Social1"),
                        resultSet.getString("Social2"),
                        resultSet.getString("Floor"),
                        resultSet.getString("Department"),
                        resultSet.getString("Office"),
                        resultSet.getString("DepartmentView"),
                        resultSet.getString("lastScheduleUpdateDate")
                );
                instructorList.add(instructor);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return instructorList;
    }

    public static Instructor GetInstructor(String id){
        try {
            ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructors WHERE instructor_id=" + id);

            while (resultSet.next()){
                Instructor instructor = new Instructor(
                        resultSet.getInt("instructor_id"),
                        resultSet.getString("FirstName"),
                        resultSet.getString("LastName"),
                        resultSet.getString("PhotoLink"),
                        resultSet.getString("Social1"),
                        resultSet.getString("Social2"),
                        resultSet.getString("Floor"),
                        resultSet.getString("Department"),
                        resultSet.getString("Office"),
                        resultSet.getString("DepartmentView"),
                        resultSet.getString("lastScheduleUpdateDate")
                );
                return instructor;
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
