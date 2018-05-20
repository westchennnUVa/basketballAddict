package httpManager;

import database.DBManager;

import java.sql.SQLException;
import java.util.Random;

/**
 * Created by Westchennn on 4/2/18.
 */
public class test {

    public void main(String[] args){
        String[] department = {"human resource","logistic","cashier","purchase","storage management","PR"};
        int random = (int)(Math.random()*6);
        String sql = "insert into krogerice.Employee (DepartmentName) values '"+department[random]+"';";
        DBManager db = new DBManager(sql);
    }



}
